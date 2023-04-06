import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/update_photo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayName widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    displayNameController?.dispose();
    userNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
