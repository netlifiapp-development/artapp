import '/backend/backend.dart';
import '/components/post_card/post_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalPostModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for PostCard component.
  late PostCardModel postCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    postCardModel = createModel(context, () => PostCardModel());
  }

  void dispose() {
    postCardModel.dispose();
  }

  /// Additional helper methods are added here.

}
