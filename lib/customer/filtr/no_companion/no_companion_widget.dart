import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_companion_model.dart';
export 'no_companion_model.dart';

class NoCompanionWidget extends StatefulWidget {
  const NoCompanionWidget({Key? key}) : super(key: key);

  @override
  _NoCompanionWidgetState createState() => _NoCompanionWidgetState();
}

class _NoCompanionWidgetState extends State<NoCompanionWidget> {
  late NoCompanionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoCompanionModel());

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
      height: 440.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).primaryBackground,
            FlutterFlowTheme.of(context).secondaryBackground
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Text(
                    'Компаньон не найден ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'К сожалению, сейчас нет подходящего компаньонов под введенные вами параметры. \n\nВы можете заказать индивидуальный подбор компаньона. Ваши ответы проанализирует персональный менеджер и подберет наиболее подходящего компаньона с учетом всех ваших пожеланий.\n\nУслуга предоставляется бесплатно.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DIN Round Pro',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
