import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthSheetModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cofw3l4f' /* Please enter your email */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'nob7t76m' /* Please enter a correct email */,
      );
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)? passwordTextFieldControllerValidator;
  String? _passwordTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1iwwt5rb' /* Please enter your password */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '378t4w15' /* Please enter a password having... */,
      );
    }

    return null;
  }

  // State field(s) for CANameTextField widget.
  TextEditingController? cANameTextFieldController;
  String? Function(BuildContext, String?)? cANameTextFieldControllerValidator;
  String? _cANameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3fb482sl' /* Please enter your name */,
      );
    }

    return null;
  }

  // State field(s) for CAEmailTextField widget.
  TextEditingController? cAEmailTextFieldController;
  String? Function(BuildContext, String?)? cAEmailTextFieldControllerValidator;
  String? _cAEmailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6ksfaaiw' /* Please enter your email */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ucqz0ad1' /* Please enter a correct email */,
      );
    }
    return null;
  }

  // State field(s) for CAPasswordTextField widget.
  TextEditingController? cAPasswordTextFieldController;
  late bool cAPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      cAPasswordTextFieldControllerValidator;
  String? _cAPasswordTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tcafayzn' /* Please enter a password */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '1o2gpbgp' /* Password should have at least ... */,
      );
    }

    return null;
  }

  // State field(s) for CAConfirmPasswordTextField widget.
  TextEditingController? cAConfirmPasswordTextFieldController;
  late bool cAConfirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      cAConfirmPasswordTextFieldControllerValidator;
  String? _cAConfirmPasswordTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dh3oorrf' /* Please confirm the password */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'zx3mv395' /* Password should have at least ... */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldControllerValidator =
        _passwordTextFieldControllerValidator;
    cANameTextFieldControllerValidator = _cANameTextFieldControllerValidator;
    cAEmailTextFieldControllerValidator = _cAEmailTextFieldControllerValidator;
    cAPasswordTextFieldVisibility = false;
    cAPasswordTextFieldControllerValidator =
        _cAPasswordTextFieldControllerValidator;
    cAConfirmPasswordTextFieldVisibility = false;
    cAConfirmPasswordTextFieldControllerValidator =
        _cAConfirmPasswordTextFieldControllerValidator;
  }

  void dispose() {
    emailTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
    cANameTextFieldController?.dispose();
    cAEmailTextFieldController?.dispose();
    cAPasswordTextFieldController?.dispose();
    cAConfirmPasswordTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
