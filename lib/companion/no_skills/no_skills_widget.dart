import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_skills_model.dart';
export 'no_skills_model.dart';

class NoSkillsWidget extends StatefulWidget {
  const NoSkillsWidget({Key? key}) : super(key: key);

  @override
  _NoSkillsWidgetState createState() => _NoSkillsWidgetState();
}

class _NoSkillsWidgetState extends State<NoSkillsWidget> {
  late NoSkillsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoSkillsModel());

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
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0x1E0D93BF),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Выбeрите навыки',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DIN Round Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                    useGoogleFonts: false,
                  ),
            ),
            Icon(
              FFIcons.kvector1Stroke,
              color: Colors.black,
              size: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
