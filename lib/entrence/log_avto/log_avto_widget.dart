import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'log_avto_model.dart';
export 'log_avto_model.dart';

class LogAvtoWidget extends StatefulWidget {
  const LogAvtoWidget({Key? key}) : super(key: key);

  @override
  _LogAvtoWidgetState createState() => _LogAvtoWidgetState();
}

class _LogAvtoWidgetState extends State<LogAvtoWidget> {
  late LogAvtoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogAvtoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      if (FFAppState().RegEnter == 1) {
        if (_model.emailController.text == 'null@momok.ru') {
          context.goNamedAuth('Reg', context.mounted);
        } else {
          GoRouter.of(context).prepareAuthEvent();

          final user = await authManager.signInWithEmail(
            context,
            _model.emailController.text,
            _model.pswController.text,
          );
          if (user == null) {
            return;
          }

          if (valueOrDefault(currentUserDocument?.role, '') == 'customer') {
            context.goNamedAuth('HomePage', context.mounted);
          } else {
            if (valueOrDefault(currentUserDocument?.role, '') == 'companion') {
              context.goNamedAuth('HomeCompanion', context.mounted);
            } else {
              if (valueOrDefault(currentUserDocument?.role, '') == 'ward') {
                context.goNamedAuth('HomeWard', context.mounted);
              } else {
                if (valueOrDefault(currentUserDocument?.role, '') == 'admin') {
                  context.goNamedAuth('AdminHome', context.mounted);
                }
              }
            }
          }
        }
      }
    });

    _model.emailController ??=
        TextEditingController(text: '${FFAppState().Phone}@momok.ru');
    _model.pswController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.pswController?.text = '123456';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 48.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        FFIcons.kvector3Stroke,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('Reg');
                      },
                    ),
                  ],
                ),
              ),
              Spacer(flex: 5),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_ebejsgcs.json',
                  height: 180.0,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              TextFormField(
                controller: _model.emailController,
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 1.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'DIN Round Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 1.0,
                      useGoogleFonts: false,
                    ),
                validator: _model.emailControllerValidator.asValidator(context),
              ),
              TextFormField(
                controller: _model.pswController,
                readOnly: true,
                obscureText: !_model.pswVisibility,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => _model.pswVisibility = !_model.pswVisibility,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.pswVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 1.0,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'DIN Round Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 1.0,
                      useGoogleFonts: false,
                    ),
                validator: _model.pswControllerValidator.asValidator(context),
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
