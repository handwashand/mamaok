import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_meet_model.dart';
export 'no_meet_model.dart';

class NoMeetWidget extends StatefulWidget {
  const NoMeetWidget({Key? key}) : super(key: key);

  @override
  _NoMeetWidgetState createState() => _NoMeetWidgetState();
}

class _NoMeetWidgetState extends State<NoMeetWidget> {
  late NoMeetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoMeetModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 120.0, 32.0, 0.0),
            child: Text(
              'Встреч  пока нет',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DIN Round Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 20.0),
            child: Text(
              'Здесь появятся ваши встречи.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DIN Round Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
