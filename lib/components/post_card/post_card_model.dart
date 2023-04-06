import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/loading_post_header/loading_post_header_widget.dart';
import '/components/prompt_viewer/prompt_viewer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostCardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for PromptViewer component.
  late PromptViewerModel promptViewerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    promptViewerModel = createModel(context, () => PromptViewerModel());
  }

  void dispose() {
    promptViewerModel.dispose();
  }

  /// Additional helper methods are added here.

}
