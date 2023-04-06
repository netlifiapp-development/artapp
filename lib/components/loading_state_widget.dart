import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loading_state_model.dart';
export 'loading_state_model.dart';

class LoadingStateWidget extends StatefulWidget {
  const LoadingStateWidget({Key? key}) : super(key: key);

  @override
  _LoadingStateWidgetState createState() => _LoadingStateWidgetState();
}

class _LoadingStateWidgetState extends State<LoadingStateWidget>
    with TickerProviderStateMixin {
  late LoadingStateModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 3200.ms,
          duration: 200.ms,
          begin: Offset(0.0, 8.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 3200.ms,
          duration: 200.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 3400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 3400.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 3400.ms,
          duration: 300.ms,
          begin: Offset(0.0, 8.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingStateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://lottie.host/5aa61485-cde5-49e9-b201-e51c3b814b9c/bMU0Aid3fu.json',
            width: 220.0,
            height: 130.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Text(
            FFLocalizations.of(context).getText(
              'wyrr1r6f' /* Generating image... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
          Text(
            FFLocalizations.of(context).getText(
              'mc71j9ti' /* Still working, your art will l... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
        ],
      ),
    );
  }
}
