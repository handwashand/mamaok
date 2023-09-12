import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_no_foto_model.dart';
export 'admin_no_foto_model.dart';

class AdminNoFotoWidget extends StatefulWidget {
  const AdminNoFotoWidget({Key? key}) : super(key: key);

  @override
  _AdminNoFotoWidgetState createState() => _AdminNoFotoWidgetState();
}

class _AdminNoFotoWidgetState extends State<AdminNoFotoWidget> {
  late AdminNoFotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminNoFotoModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 400.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
          child: Text(
            'Фотографий со встречи нет',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'DIN Round Pro',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 18.0,
                  useGoogleFonts: false,
                ),
          ),
        ),
      ),
    );
  }
}
