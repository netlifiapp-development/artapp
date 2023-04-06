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
import 'generate_art_page_model.dart';
export 'generate_art_page_model.dart';

class GenerateArtPageWidget extends StatefulWidget {
  const GenerateArtPageWidget({Key? key}) : super(key: key);

  @override
  _GenerateArtPageWidgetState createState() => _GenerateArtPageWidgetState();
}

class _GenerateArtPageWidgetState extends State<GenerateArtPageWidget> {
  late GenerateArtPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenerateArtPageModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  'qucyv8un' /* Generate art */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 20.0, 8.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 60.0,
                    buttonSize: 44.0,
                    fillColor: FlutterFlowTheme.of(context).lineColor,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            )
        ],
        body: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 600.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 60.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model.textController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'xfi44ix1' /* Enter your prompt here */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 16.0,
                                                            16.0, 16.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              maxLines: null,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 24.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8epxkbm7' /* Inference Steps */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      _model
                                                          .interfaceStepsSliderValue
                                                          ?.toString(),
                                                      '1',
                                                    ),
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              child: Slider(
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                min: 1.0,
                                                max: 150.0,
                                                value: _model
                                                        .interfaceStepsSliderValue ??=
                                                    10.0,
                                                divisions: 149,
                                                onChanged: (newValue) {
                                                  setState(() => _model
                                                          .interfaceStepsSliderValue =
                                                      newValue);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (!FFAppState().isGenerating)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 24.0, 16.0, 24.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              FFAppState().update(() {
                                                FFAppState().isGenerating =
                                                    true;
                                              });
                                              _model.createPredictionResult =
                                                  await CreatePredictionCall
                                                      .call(
                                                prompt:
                                                    _model.textController.text,
                                                inferenceSteps:
                                                    valueOrDefault<int>(
                                                  functions.convertDoubleToInt(
                                                      _model
                                                          .interfaceStepsSliderValue!),
                                                  10,
                                                ),
                                              );
                                              if ((_model.createPredictionResult
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.predictionProgressTimer =
                                                    InstantTimer.periodic(
                                                  duration: Duration(
                                                      milliseconds: 1000),
                                                  callback: (timer) async {
                                                    _model.predictionProgress =
                                                        await GetPredictionCall
                                                            .call(
                                                      id: CreatePredictionCall
                                                          .id(
                                                        (_model.createPredictionResult
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                    );
                                                    if ((_model
                                                            .predictionProgress
                                                            ?.succeeded ??
                                                        true)) {
                                                      if ((GetPredictionCall
                                                                  .status(
                                                                (_model.predictionProgress
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              FFAppState()
                                                                  .statusSucceeded) ||
                                                          (GetPredictionCall
                                                                  .status(
                                                                (_model.predictionProgress
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              FFAppState()
                                                                  .statusFailed) ||
                                                          (GetPredictionCall
                                                                  .status(
                                                                (_model.predictionProgress
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              FFAppState()
                                                                  .statusCanceled)) {
                                                        _model
                                                            .predictionProgressTimer
                                                            ?.cancel();
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .isGenerating =
                                                              false;
                                                          FFAppState()
                                                                  .isArtPreviewEnabled =
                                                              true;
                                                        });
                                                      }
                                                    }
                                                  },
                                                  startImmediately: false,
                                                );
                                              }

                                              setState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '1dbbjeub' /* Generate */,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 60.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().isGenerating)
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, -1.0),
                                          )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 44.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.loadingStateModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: LoadingStateWidget(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (FFAppState().isArtPreviewEnabled)
                        wrapWithModel(
                          model: _model.previewGeneratedArtModel,
                          updateCallback: () => setState(() {}),
                          child: PreviewGeneratedArtWidget(
                            generatedArtResult:
                                (_model.predictionProgress?.jsonBody ?? ''),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
