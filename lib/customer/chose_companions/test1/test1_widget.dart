import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test1_model.dart';
export 'test1_model.dart';

class Test1Widget extends StatefulWidget {
  const Test1Widget({Key? key}) : super(key: key);

  @override
  _Test1WidgetState createState() => _Test1WidgetState();
}

class _Test1WidgetState extends State<Test1Widget> {
  late Test1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test1Model());

    _model.cityFController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        body: Container(
          width: double.infinity,
          height: double.infinity,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 48.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        FFIcons.kvector3Stroke,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('FindCompStart');
                      },
                    ),
                    Text(
                      'Тестирование',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Color(0x65728BC4),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.08,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF728BC4),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
                child: Text(
                  'Вопрос 1/5',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DIN Round Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Выберите город',
                  style: FlutterFlowTheme.of(context).headlineSmall,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 36.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.cityFController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.cityFController',
                    Duration(milliseconds: 1000),
                    () async {
                      _model.apiResultctg = await CityGoogleCall.call(
                        input: _model.cityFController.text,
                      );

                      setState(() {});
                    },
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Город',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DIN Round Pro',
                          color: FlutterFlowTheme.of(context).hintText,
                          useGoogleFonts: false,
                        ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: Color(0x1F0D93BF),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DIN Round Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        useGoogleFonts: false,
                      ),
                  validator:
                      _model.cityFControllerValidator.asValidator(context),
                ),
              ),
              Divider(
                thickness: 0.5,
                indent: 16.0,
                endIndent: 16.0,
                color: Color(0xFFC6C6C8),
              ),
              if (_model.cityFController.text != null &&
                  _model.cityFController.text != '')
                Builder(
                  builder: (context) {
                    final cityYou = CityGoogleCall.spisok(
                          (_model.apiResultctg?.jsonBody ?? ''),
                        )?.toList() ??
                        [];
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: cityYou.length,
                      itemBuilder: (context, cityYouIndex) {
                        final cityYouItem = cityYou[cityYouIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              FFAppState().FiltrCityFull = getJsonField(
                                cityYouItem,
                                r'''$.description''',
                              ).toString();
                              FFAppState().FiltrCity = getJsonField(
                                cityYouItem,
                                r'''$.structured_formatting.main_text''',
                              ).toString();
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 65.0,
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 0.0, 8.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              getJsonField(
                                                cityYouItem,
                                                r'''$.description''',
                                              ).toString(),
                                              '0',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DIN Round Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (getJsonField(
                                                  cityYouItem,
                                                  r'''$.description''',
                                                ) ==
                                                FFAppState().FiltrCityFull)
                                              Container(
                                                width: 24.0,
                                                height: 24.0,
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Container(
                                                      width: 6.0,
                                                      height: 6.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2.0),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Icon(
                                                        Icons.crop_din_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 22.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (getJsonField(
                                                  cityYouItem,
                                                  r'''$.description''',
                                                ) !=
                                                FFAppState().FiltrCityFull)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 1.0, 0.0),
                                                child: Icon(
                                                  Icons.crop_din_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 22.0,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 0.5,
                                    indent: 16.0,
                                    endIndent: 16.0,
                                    color: Color(0xFFC6C6C8),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              Spacer(),
              if ((_model.cityFController.text != null &&
                      _model.cityFController.text != '') &&
                  (FFAppState().FiltrCity != null &&
                      FFAppState().FiltrCity != ''))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 46.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Rectangle_1.png',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 16.0,
                            color: FlutterFlowTheme.of(context).shadow,
                            offset: Offset(0.0, 8.0),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).secondary
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'Test2',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        text: 'ДАЛЕЕ',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x00FFFFFF),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'DIN Round Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
