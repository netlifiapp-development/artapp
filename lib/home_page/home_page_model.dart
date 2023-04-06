import '/backend/backend.dart';
import '/components/empty_list_widget.dart';
import '/components/logo_widget.dart';
import '/components/modal_post_widget.dart';
import '/components/post_card_widget.dart';
import '/components/side_nav2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for SideNav_2 component.
  late SideNav2Model sideNav2Model;
  // Models for PostCard dynamic component.
  late FlutterFlowDynamicModels<PostCardModel> postCardModels;
  // Model for logo component.
  late LogoModel logoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNav2Model = createModel(context, () => SideNav2Model());
    postCardModels = FlutterFlowDynamicModels(() => PostCardModel());
    logoModel = createModel(context, () => LogoModel());
  }

  void dispose() {
    sideNav2Model.dispose();
    postCardModels.dispose();
    logoModel.dispose();
  }

  /// Additional helper methods are added here.

}
