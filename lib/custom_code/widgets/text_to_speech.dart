// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:math';

// Imports other custom widgets
import 'dart:typed_data';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_azure_tts/flutter_azure_tts.dart';

class TextToSpeech extends StatefulWidget {
  const TextToSpeech({
    Key? key,
    this.width,
    this.height,
    required this.subscriptionkey,
    required this.region,
    required this.input,
    required this.voice,
    this.speechRate = 1,
    this.iconColor,
    this.backgroundColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String subscriptionkey;
  final String region;
  final String input;
  final String voice;
  final double speechRate;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  _TextToSpeechState createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  static TtsManager? ttsManagerSingleton;

  late String randomID;

  @override
  void initState() {
    super.initState();

    // Generate random ID for each widget instance
    randomID = Random().nextInt(100000).toString();

    if (widget.input.isEmpty || widget.subscriptionkey.isEmpty) {
      throw Exception('Input or subscription key is empty');
    }

    // Initialize TTS manager only once
    if (ttsManagerSingleton == null) {
      ttsManagerSingleton = TtsManager(
          subscriptionKey: widget.subscriptionkey, region: widget.region);
      ttsManagerSingleton!.init();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),

      //Update widget each time when state of tts.state updates.
      child: ValueListenableBuilder<TtsManagerState>(
        valueListenable: ttsManagerSingleton!.state,
        builder: (context, TtsManagerState state, child) {
          switch (state) {
            case TtsManagerState.loading:
              return Center(child: CircularProgressIndicator());
            case TtsManagerState.error:
              return buildIcon(icon: Icons.error);
            case TtsManagerState.ready:
              return ValueListenableBuilder<TtsPlayerState>(
                valueListenable: ttsManagerSingleton!.currentListenerState,
                builder: (context, TtsPlayerState state, child) {
                  if (ttsManagerSingleton!.currentlyListening != randomID) {
                    return IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: widget.iconColor ?? Colors.black,
                      onPressed: () => ttsManagerSingleton!.play(widget.voice,
                          randomID, widget.input, widget.speechRate),
                    );
                  }

                  //Currently listening
                  switch (state) {
                    case TtsPlayerState.playing:
                      return buildIcon(
                          icon: Icons.pause,
                          onPressed: () => ttsManagerSingleton!.pause());
                    case TtsPlayerState.stopped:
                      return buildIcon(
                          icon: Icons.play_arrow,
                          onPressed: () => ttsManagerSingleton!.play(
                              widget.voice,
                              randomID,
                              widget.input,
                              widget.speechRate));
                    case TtsPlayerState.paused:
                      return buildIcon(
                          icon: Icons.play_arrow,
                          onPressed: () => ttsManagerSingleton!.resume());
                    case TtsPlayerState.loading:
                      return Center(child: CircularProgressIndicator());
                    case TtsPlayerState.error:
                      return buildIcon(icon: Icons.error);
                  }
                },
              );
          }
        },
      ),
    );
  }

  Widget buildIcon({required IconData icon, VoidCallback? onPressed}) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.backgroundColor ??
            FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(icon),
          color: widget.iconColor ?? FlutterFlowTheme.of(context).primaryColor,
          onPressed: onPressed ?? () {},
        ),
      ),
    );
  }
}

/*
  * This class is used to convert a Uint8List to a StreamAudioSource
  * This is needed because the audio_player package only accepts StreamAudioSource
  * as an audio source.
  *
  * Thanks to @Regular-Jo (https://stackoverflow.com/a/71889460/12516987)
  */
class BytesSource extends StreamAudioSource {
  final Uint8List _buffer;

  BytesSource(this._buffer) : super(tag: 'MyAudioSource');

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    // Returning the stream audio response with the parameters
    return StreamAudioResponse(
      sourceLength: _buffer.length,
      contentLength: (start ?? 0) - (end ?? _buffer.length),
      offset: start ?? 0,
      stream: Stream.fromIterable([_buffer.sublist(start ?? 0, end)]),
      contentType: 'audio/wav',
    );
  }
}

class TtsManager {
  // Cache audio files to avoid unnecessary API calls
  // Voice
  //   - Text: Audio file
  //   - Text: Audio file
  final Map<String, Map<String, Uint8List>> audioCache = {};
  final AudioPlayer audioPlayer = AudioPlayer();

  String subscriptionKey;
  String region;
  List<Voice> voices = [];

  ValueNotifier<TtsManagerState> state =
      ValueNotifier<TtsManagerState>(TtsManagerState.loading);
  String currentlyListening = '';
  ValueNotifier<TtsPlayerState> currentListenerState =
      ValueNotifier<TtsPlayerState>(TtsPlayerState.stopped);

  TtsManager({
    required this.subscriptionKey,
    required this.region,
  });

  void init() async {
    state.value = TtsManagerState.loading;

    AzureTts.init(
      subscriptionKey: subscriptionKey,
      region: region,
      withLogs: true,
    );

    audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        currentListenerState.value = TtsPlayerState.stopped;
      }
    });

    final response = await AzureTts.getAvailableVoices();
    if (response is VoicesSuccess) {
      voices = response.voices;
    } else {
      state.value = TtsManagerState.error;
      throw Exception('Failed to get voices from Azure TTS');
    }

    state.value = TtsManagerState.ready;
  }

  void play(String voice, String id, String text, double rate) async {
    currentlyListening = id;
    currentListenerState.value = TtsPlayerState.loading;

    final selectedVoice = getSelectedVoice(voice);

    final audioFile = await getAudioFile(text, selectedVoice, rate);

    //Todo: Add error handling
    if (audioFile == null) {
      currentListenerState.value = TtsPlayerState.error;
      return;
    }

    final audioSource = BytesSource(audioFile);
    await audioPlayer.setAudioSource(audioSource);
    audioPlayer.play(); // Don't await this

    currentListenerState.value = TtsPlayerState.playing;
  }

  void pause() async {
    await audioPlayer.pause();
    currentListenerState.value = TtsPlayerState.paused;
  }

  void resume() async {
    audioPlayer.play(); // Don't await this
    currentListenerState.value = TtsPlayerState.playing;
  }

  // Select the first voice that matches the language code
  // If no voice matches the language code, select the first neural voice
  Voice getSelectedVoice(String voice) {
    final lowercaseVoiceName = voice.toLowerCase();

    final selectedVoice = voices.firstWhere(
      (voice) => voice.shortName.toLowerCase() == lowercaseVoiceName,
      orElse: () => voices.firstWhere(
        (voice) =>
            voice.voiceType == "Neural" && voice.locale.startsWith("en-"),
        orElse: () => voices.first, // Fallback to the first voice in the list
      ),
    );

    return selectedVoice;
  }

  Future<Uint8List?> getAudioFile(String text, Voice voice, double rate) async {
    final String voiceID = '${voice.shortName}:$rate';

    //First check if the audio file is already cached
    if (audioCache.containsKey(voiceID) &&
        audioCache[voiceID]!.containsKey(text)) {
      return audioCache[voiceID]![text];
    }

    // If the audio file is not cached, get it from the API
    final params = TtsParams(
      text: text,
      voice: voice,
      audioFormat: AudioOutputFormat.audio16khz32kBitrateMonoMp3,
      rate: rate,
    );

    final AudioResponse response = await AzureTts.getTts(params);

    // If the response is not a success, return null
    if (!(response is AudioSuccess)) {
      print(
          'Failed to get audio file from Azure TTS (code: ${response.code}, reason: ${response.reason})');
      return null;
    }

    if (!audioCache.containsKey(voiceID)) {
      audioCache[voiceID] = {};
    }

    audioCache[voiceID]![text] = response.audio;

    return response.audio;
  }
}

enum TtsManagerState { loading, error, ready }

enum TtsPlayerState { playing, stopped, paused, loading, error }
