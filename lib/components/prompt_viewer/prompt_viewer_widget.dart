import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prompt_viewer_model.dart';
export 'prompt_viewer_model.dart';

class PromptViewerWidget extends StatefulWidget {
  const PromptViewerWidget({
    Key? key,
    this.promptText,
  }) : super(key: key);

  final String? promptText;

  @override
  _PromptViewerWidgetState createState() => _PromptViewerWidgetState();
}

class _PromptViewerWidgetState extends State<PromptViewerWidget> {
  late PromptViewerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromptViewerModel());

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

    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).overlayColor,
          ),
          child: Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.promptText!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xB2FFFFFF),
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
