import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_sheet_model.dart';
export 'auth_sheet_model.dart';

class AuthSheetWidget extends StatefulWidget {
  const AuthSheetWidget({Key? key}) : super(key: key);

  @override
  _AuthSheetWidgetState createState() => _AuthSheetWidgetState();
}

class _AuthSheetWidgetState extends State<AuthSheetWidget> {
  late AuthSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthSheetModel());

    _model.emailTextFieldController ??= TextEditingController();
    _model.passwordTextFieldController ??= TextEditingController();
    _model.cANameTextFieldController ??= TextEditingController();
    _model.cAEmailTextFieldController ??= TextEditingController();
    _model.cAPasswordTextFieldController ??= TextEditingController();
    _model.cAConfirmPasswordTextFieldController ??= TextEditingController();
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

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Container(
                width: 60.0,
                height: 6.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Form(
              key: _model.formKey1,
              autovalidateMode: AutovalidateMode.disabled,
              child: Visibility(
                visible: FFAppState().isLoginSelected,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '0n19brqx' /* Sign In */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 32.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.emailTextFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'gyro46ff' /* Email */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'rtj25ur3' /* Enter your email */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.passwordTextFieldController,
                          obscureText: !_model.passwordTextFieldVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              's2vb9zvd' /* Password */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'm8ysityp' /* Enter your password */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.passwordTextFieldVisibility =
                                    !_model.passwordTextFieldVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.passwordTextFieldVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                size: 22.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          validator: _model.passwordTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'uczx858h' /* Don't have an account? */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().isLoginSelected = false;
                                  });
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ayjh6vgq' /* Sign Up */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .bottomSheetText,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: InkWell(
                          onTap: () async {
                            if (_model.formKey1.currentState == null ||
                                !_model.formKey1.currentState!.validate()) {
                              return;
                            }
                            GoRouter.of(context).prepareAuthEvent();

                            final user = await signInWithEmail(
                              context,
                              _model.emailTextFieldController.text,
                              _model.passwordTextFieldController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            context.goNamedAuth('HomePage', mounted);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '6yqvvuss' /* Login */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '6ybuvoop' /* Or use a social account to sig... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            8.0, 16.0, 8.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await signInWithGoogle(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth('HomePage', mounted);
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .bottomSheetText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x3314181B),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await signInWithApple(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth('HomePage', mounted);
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .bottomSheetText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x3314181B),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.apple,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Form(
              key: _model.formKey2,
              autovalidateMode: AutovalidateMode.disabled,
              child: Visibility(
                visible: !FFAppState().isLoginSelected,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'urj3a01o' /* Create Account */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 32.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.cANameTextFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'nixsfpbd' /* Name */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'we3aclq8' /* Enter your name */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          keyboardType: TextInputType.name,
                          validator: _model.cANameTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.cAEmailTextFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'vj8jh8jm' /* Email */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'n3v8wmqw' /* Enter your email */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.cAEmailTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.cAPasswordTextFieldController,
                          obscureText: !_model.cAPasswordTextFieldVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'qze6enr4' /* Password */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'zwh9qj52' /* Enter your password */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.cAPasswordTextFieldVisibility =
                                    !_model.cAPasswordTextFieldVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.cAPasswordTextFieldVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                size: 22.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          validator: _model
                              .cAPasswordTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: TextFormField(
                          controller:
                              _model.cAConfirmPasswordTextFieldController,
                          obscureText:
                              !_model.cAConfirmPasswordTextFieldVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '3z5403hk' /* Confirm Password */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .bottomSheetText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'q5r1r24f' /* Confirm your password */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF0000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model
                                        .cAConfirmPasswordTextFieldVisibility =
                                    !_model
                                        .cAConfirmPasswordTextFieldVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.cAConfirmPasswordTextFieldVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .bottomSheetText,
                                size: 22.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          validator: _model
                              .cAConfirmPasswordTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'udpfrk4e' /* Already have an account? */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().isLoginSelected = true;
                                  });
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '8bmfmq7n' /* Login */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .bottomSheetText,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: InkWell(
                          onTap: () async {
                            if (_model.formKey2.currentState == null ||
                                !_model.formKey2.currentState!.validate()) {
                              return;
                            }
                            GoRouter.of(context).prepareAuthEvent();
                            if (_model.cAPasswordTextFieldController.text !=
                                _model.cAConfirmPasswordTextFieldController
                                    .text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              _model.cAEmailTextFieldController.text,
                              _model.cAPasswordTextFieldController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            context.goNamedAuth('HomePage', mounted);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'f47xi40i' /* Sign Up */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'cqgmhm43' /* Or use a social account to sig... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            8.0, 16.0, 8.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await signInWithGoogle(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth('HomePage', mounted);
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .bottomSheetText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x3314181B),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await signInWithApple(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth('HomePage', mounted);
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .bottomSheetText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x3314181B),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.apple,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
