import '/components/auth_sheet/auth_sheet_widget.dart';
import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class StartPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for logo component.
  late LogoModel logoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
  }

  void dispose() {
    logoModel.dispose();
  }

  /// Additional helper methods are added here.

}
