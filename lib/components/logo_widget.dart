import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_model.dart';
export 'logo_model.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> with TickerProviderStateMixin {
  late LogoModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: 4.0,
          end: 0.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: 4.0,
          end: 0.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (Theme.of(context).brightness == Brightness.dark)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
            child: Image.asset(
              'assets/images/logo_ArtserWhite@2x.png',
              height: 36.0,
              fit: BoxFit.cover,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation1']!),
          ),
        if (Theme.of(context).brightness == Brightness.light)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
            child: Image.asset(
              'assets/images/logo_ArtserDark@2x.png',
              height: 36.0,
              fit: BoxFit.cover,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation2']!),
          ),
      ],
    );
  }
}
