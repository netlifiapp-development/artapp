import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePostPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mobileDescription widget.
  TextEditingController? mobileDescriptionController;
  String? Function(BuildContext, String?)? mobileDescriptionControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? createdPostMobile;
  // State field(s) for DesktopDescription widget.
  TextEditingController? desktopDescriptionController;
  String? Function(BuildContext, String?)?
      desktopDescriptionControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? createdPost;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    mobileDescriptionController?.dispose();
    desktopDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
