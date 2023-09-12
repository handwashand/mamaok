import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_meet_customer_model.dart';
export 'no_meet_customer_model.dart';

class NoMeetCustomerWidget extends StatefulWidget {
  const NoMeetCustomerWidget({Key? key}) : super(key: key);

  @override
  _NoMeetCustomerWidgetState createState() => _NoMeetCustomerWidgetState();
}

class _NoMeetCustomerWidgetState extends State<NoMeetCustomerWidget> {
  late NoMeetCustomerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoMeetCustomerModel());

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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 18.0, 24.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('FindCompStart');
              },
              text: 'НАЗНАЧИТЬ ВСТРЕЧУ',
              options: FFButtonOptions(
                width: double.infinity,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'DIN Round Pro',
                      color: Colors.white,
                      useGoogleFonts: false,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
