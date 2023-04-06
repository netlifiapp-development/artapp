import '/backend/api_requests/api_calls.dart';
import '/components/loading_state_widget.dart';
import '/components/preview_generated_art_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenerateArtPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for InterfaceStepsSlider widget.
  double? interfaceStepsSliderValue;
  // Stores action output result for [Backend Call - API (Create Prediction)] action in Button widget.
  ApiCallResponse? createPredictionResult;
  InstantTimer? predictionProgressTimer;
  // Stores action output result for [Backend Call - API (Get Prediction)] action in Button widget.
  ApiCallResponse? predictionProgress;
  // Model for loadingState component.
  late LoadingStateModel loadingStateModel;
  // Model for PreviewGeneratedArt component.
  late PreviewGeneratedArtModel previewGeneratedArtModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loadingStateModel = createModel(context, () => LoadingStateModel());
    previewGeneratedArtModel =
        createModel(context, () => PreviewGeneratedArtModel());
  }

  void dispose() {
    textController?.dispose();
    predictionProgressTimer?.cancel();
    loadingStateModel.dispose();
    previewGeneratedArtModel.dispose();
  }

  /// Additional helper methods are added here.

}
