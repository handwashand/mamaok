import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test9_model.dart';
export 'test9_model.dart';

class Test9Widget extends StatefulWidget {
  const Test9Widget({Key? key}) : super(key: key);

  @override
  _Test9WidgetState createState() => _Test9WidgetState();
}

class _Test9WidgetState extends State<Test9Widget> {
  late Test9Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test9Model());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: StreamBuilder<List<AdressesRecord>>(
          stream: queryAdressesRecord(
            queryBuilder: (adressesRecord) =>
                adressesRecord.where('IDcustomer', isEqualTo: currentUserUid),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitDoubleBounce(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 0.0,
                  ),
                ),
              );
            }
            List<AdressesRecord> containerAdressesRecordList = snapshot.data!;
            return Container(
              width: double.infinity,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 48.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        FFIcons.kvector3Stroke,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Test8');
                                      },
                                    ),
                                    Text(
                                      'План встречи',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'DIN Round Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 20.0, 16.0, 0.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x65728BC4),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.63,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF728BC4),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 0.0),
                                child: Text(
                                  'Когда вы хотите запланировать встречу с компаньоном? Выберете удобный для вас день и время.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DIN Round Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: FlutterFlowCalendar(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      weekFormat: false,
                                      weekStartsMonday: true,
                                      initialDate: getCurrentTimestamp,
                                      onChange:
                                          (DateTimeRange? newSelectedDate) {
                                        setState(() =>
                                            _model.calendarSelectedDay =
                                                newSelectedDate);
                                      },
                                      titleStyle: TextStyle(
                                        fontFamily: 'DIN Round Pro',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                      ),
                                      dayOfWeekStyle: TextStyle(
                                        fontFamily: 'DIN Round Pro',
                                        fontSize: 15.0,
                                      ),
                                      dateStyle: TextStyle(
                                        fontFamily: 'DIN Round Pro',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                      ),
                                      selectedDateStyle: TextStyle(
                                        fontFamily: 'DIN Round Pro',
                                      ),
                                      inactiveDateStyle: TextStyle(
                                        fontFamily: 'DIN Round Pro',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                      ),
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: Color(0x1E767680),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Text(
                                              'УТРО',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'DIN Round Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 9;
                                                      });
                                                    },
                                                    text: '9:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              9
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        9
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                fontSize: 16.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.23,
                                                    height: 44.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .TimeMeeting = 10;
                                                        });
                                                      },
                                                      text: '10:00',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FFAppState()
                                                                    .TimeMeeting ==
                                                                10
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x1E4AB7A7),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FFAppState()
                                                                              .TimeMeeting ==
                                                                          10
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 11;
                                                      });
                                                    },
                                                    text: '11:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              11
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        11
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: Color(0x1E767680),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Text(
                                              'ДЕНЬ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'DIN Round Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 12;
                                                      });
                                                    },
                                                    text: '12:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              12
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        12
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                fontSize: 16.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.23,
                                                    height: 44.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .TimeMeeting = 13;
                                                        });
                                                      },
                                                      text: '13:00',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FFAppState()
                                                                    .TimeMeeting ==
                                                                13
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x1E4AB7A7),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FFAppState()
                                                                              .TimeMeeting ==
                                                                          13
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 14;
                                                      });
                                                    },
                                                    text: '14:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              14
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        14
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 15;
                                                      });
                                                    },
                                                    text: '15:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              15
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        15
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                fontSize: 16.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.23,
                                                    height: 44.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .TimeMeeting = 16;
                                                        });
                                                      },
                                                      text: '16:00',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FFAppState()
                                                                    .TimeMeeting ==
                                                                16
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x1E4AB7A7),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FFAppState()
                                                                              .TimeMeeting ==
                                                                          16
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.23,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .TimeMeeting = 17;
                                                      });
                                                    },
                                                    text: '17:00',
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FFAppState()
                                                                  .TimeMeeting ==
                                                              17
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0x1E4AB7A7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FFAppState()
                                                                            .TimeMeeting ==
                                                                        17
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 80.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 16.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: Color(0x1E767680),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 16.0),
                                              child: Text(
                                                'ВЕЧЕР',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.23,
                                                    height: 44.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .TimeMeeting = 18;
                                                        });
                                                      },
                                                      text: '18:00',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FFAppState()
                                                                    .TimeMeeting ==
                                                                18
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x1E4AB7A7),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FFAppState()
                                                                              .TimeMeeting ==
                                                                          18
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.23,
                                                      height: 44.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .TimeMeeting = 19;
                                                          });
                                                        },
                                                        text: '19:00',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 44.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FFAppState()
                                                                      .TimeMeeting ==
                                                                  19
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : Color(
                                                                  0x1E4AB7A7),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'DIN Round Pro',
                                                                    color: FFAppState().TimeMeeting ==
                                                                            19
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBtnText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.23,
                                                    height: 44.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .TimeMeeting = 20;
                                                        });
                                                      },
                                                      text: '20:00',
                                                      options: FFButtonOptions(
                                                        height: 44.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FFAppState()
                                                                    .TimeMeeting ==
                                                                20
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x1E4AB7A7),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FFAppState()
                                                                              .TimeMeeting ==
                                                                          20
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (FFAppState().TimeMeeting > 0)
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Rectangle_1.png',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 16.0,
                                      color:
                                          FlutterFlowTheme.of(context).shadow,
                                      offset: Offset(0.0, 8.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().DayMeeting =
                                          functions.realTimeMeet(
                                              functions.clearDay(_model
                                                  .calendarSelectedDay!.start),
                                              FFAppState().TimeMeeting);
                                    });
                                    if (FFAppState().DayMeeting! <
                                        getCurrentTimestamp) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Выбрана дата встречи ранее текущей даты',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                    } else {
                                      if (containerAdressesRecordList.length >
                                          0) {
                                        context.pushNamed('AdressList');
                                      } else {
                                        context.pushNamed('MapCustomer');
                                      }
                                    }
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
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
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: double.infinity,
                      height: 84.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x4D000000),
                            offset: Offset(0.0, -0.5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'HomePage',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.krectangle2Stroke,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 18.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              'Главная',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'DIN Round Pro',
                                                    color: Color(0x9C3C3C43),
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<List<UsersRecord>>(
                                      stream: queryUsersRecord(
                                        queryBuilder: (usersRecord) =>
                                            usersRecord.where('Role',
                                                isEqualTo: 'admin1'),
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitDoubleBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 0.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<UsersRecord>
                                            columnUsersRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnUsersRecord =
                                            columnUsersRecordList.isNotEmpty
                                                ? columnUsersRecordList.first
                                                : null;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (valueOrDefault(
                                                    currentUserDocument?.role,
                                                    '') ==
                                                'admin1') {
                                              context.pushNamed('AdminChat1');
                                            } else {
                                              context.pushNamed(
                                                'Chat',
                                                queryParameters: {
                                                  'chatUser': serializeParam(
                                                    columnUsersRecord,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'chatUser': columnUsersRecord,
                                                },
                                              );
                                            }
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                FFIcons.kchatbubblenew,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 20.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 6.0, 0.0, 0.0),
                                                child: Text(
                                                  'Чат с менеджером',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'DIN Round Pro',
                                                        color:
                                                            Color(0x983C3C43),
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'CustomerCabinet',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kprofilenew,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              'Личный кабинет',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'DIN Round Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
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
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
