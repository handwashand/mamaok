import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_zayavka_end_model.dart';
export 'admin_zayavka_end_model.dart';

class AdminZayavkaEndWidget extends StatefulWidget {
  const AdminZayavkaEndWidget({
    Key? key,
    required this.companion,
    required this.customer,
  }) : super(key: key);

  final UsersRecord? companion;
  final UsersRecord? customer;

  @override
  _AdminZayavkaEndWidgetState createState() => _AdminZayavkaEndWidgetState();
}

class _AdminZayavkaEndWidgetState extends State<AdminZayavkaEndWidget> {
  late AdminZayavkaEndModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminZayavkaEndModel());

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
        body: StreamBuilder<List<PriceListRecord>>(
          stream: queryPriceListRecord(
            queryBuilder: (priceListRecord) => priceListRecord.where('Name',
                isEqualTo: FFAppState().filtrPriceName),
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
                    color: FlutterFlowTheme.of(context).primary,
                    size: 0.0,
                  ),
                ),
              );
            }
            List<PriceListRecord> containerPriceListRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final containerPriceListRecord =
                containerPriceListRecordList.isNotEmpty
                    ? containerPriceListRecordList.first
                    : null;
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
              child: StreamBuilder<List<NomberMeetRecord>>(
                stream: queryNomberMeetRecord(
                  queryBuilder: (nomberMeetRecord) =>
                      nomberMeetRecord.where('Indicator', isEqualTo: 1),
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
                          color: FlutterFlowTheme.of(context).primary,
                          size: 0.0,
                        ),
                      ),
                    );
                  }
                  List<NomberMeetRecord> columnNomberMeetRecordList =
                      snapshot.data!;
                  final columnNomberMeetRecord =
                      columnNomberMeetRecordList.isNotEmpty
                          ? columnNomberMeetRecordList.first
                          : null;
                  return Column(
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
                                            context.pushNamed(
                                              'AdmibwhishMeeting',
                                              queryParameters: {
                                                'customer': serializeParam(
                                                  widget.customer,
                                                  ParamType.Document,
                                                ),
                                                'companion': serializeParam(
                                                  widget.companion,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'customer': widget.customer,
                                                'companion': widget.companion,
                                              },
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'Заявка на встречу',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DIN Round Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                        60.0, 16.0, 60.0, 0.0),
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
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Text(
                                                'Компаньон',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 6.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${widget.companion?.displayName} ${widget.companion?.surname}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(40.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 44.0,
                                                      height: 44.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.asset(
                                                            'assets/images/person.png',
                                                          ).image,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: 44.0,
                                                        height: 44.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          widget.companion!
                                                              .photoUrl,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            StyledDivider(
                                              thickness: 1.0,
                                              color: Color(0xFFC6C6C8),
                                              lineStyle:
                                                  DividerLineStyle.dotted,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Тариф',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 6.0),
                                              child: FutureBuilder<
                                                  List<TarifsCustomerRecord>>(
                                                future:
                                                    queryTarifsCustomerRecordOnce(
                                                  queryBuilder: (tarifsCustomerRecord) =>
                                                      tarifsCustomerRecord
                                                          .where('IDCustomer',
                                                              isEqualTo:
                                                                  currentUserUid)
                                                          .where('Count',
                                                              isGreaterThan: 0)
                                                          .where('Name',
                                                              isEqualTo:
                                                                  containerPriceListRecord
                                                                      ?.name),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            SpinKitDoubleBounce(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 0.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<TarifsCustomerRecord>
                                                      rowTarifsCustomerRecordList =
                                                      snapshot.data!;
                                                  final rowTarifsCustomerRecord =
                                                      rowTarifsCustomerRecordList
                                                              .isNotEmpty
                                                          ? rowTarifsCustomerRecordList
                                                              .first
                                                          : null;
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        containerPriceListRecord!
                                                            .name,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      if (FFAppState()
                                                              .haveTarif !=
                                                          1)
                                                        Text(
                                                          () {
                                                            if (containerPriceListRecord!
                                                                    .count <
                                                                2) {
                                                              return '1 встреча';
                                                            } else if (containerPriceListRecord!
                                                                    .count <
                                                                5) {
                                                              return '${containerPriceListRecord?.count?.toString()} встречи';
                                                            } else {
                                                              return '${containerPriceListRecord?.count?.toString()} встреч';
                                                            }
                                                          }(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      if (FFAppState()
                                                              .haveTarif ==
                                                          1)
                                                        Text(
                                                          '${rowTarifsCustomerRecord?.count?.toString()} встреча из ${containerPriceListRecord?.count?.toString()}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            StyledDivider(
                                              thickness: 1.0,
                                              color: Color(0xFFC6C6C8),
                                              lineStyle:
                                                  DividerLineStyle.dotted,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'План встречи   ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            StreamBuilder<
                                                List<PlaceMeetingRecord>>(
                                              stream: queryPlaceMeetingRecord(
                                                queryBuilder:
                                                    (placeMeetingRecord) =>
                                                        placeMeetingRecord
                                                            .whereIn(
                                                                'Place',
                                                                FFAppState()
                                                                    .PlanMeeting),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PlaceMeetingRecord>
                                                    listViewPlaceMeetingRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewPlaceMeetingRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewPlaceMeetingRecord =
                                                        listViewPlaceMeetingRecordList[
                                                            listViewIndex];
                                                    return Container(
                                                      width: 100.0,
                                                      height: 44.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            FFIcons.kicon1,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              listViewPlaceMeetingRecord
                                                                  .place,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'DIN Round Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            if (FFAppState()
                                                        .FoltrPlanVstrechiFree !=
                                                    null &&
                                                FFAppState()
                                                        .FoltrPlanVstrechiFree !=
                                                    '')
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        FFIcons.kicon1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFAppState()
                                                                .FoltrPlanVstrechiFree,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            StyledDivider(
                                              thickness: 1.0,
                                              color: Color(0xFFC6C6C8),
                                              lineStyle:
                                                  DividerLineStyle.dotted,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Дата и время встречи',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Text(
                                                '${dateTimeFormat(
                                                  'yMMMd',
                                                  FFAppState().DayMeeting,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )}, ${dateTimeFormat(
                                                  'Hm',
                                                  FFAppState().DayMeeting,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            StyledDivider(
                                              thickness: 1.0,
                                              color: Color(0xFFC6C6C8),
                                              lineStyle:
                                                  DividerLineStyle.dotted,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Адрес родителя',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'DIN Round Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .FiltrAdressString,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'DIN Round Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (FFAppState()
                                                        .FiltrAdressComment !=
                                                    null &&
                                                FFAppState()
                                                        .FiltrAdressComment !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Text(
                                                  'КОММЕНТАРИЙ К АДРЕСУ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'DIN Round Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (FFAppState()
                                                            .FiltrAdressComment !=
                                                        null &&
                                                    FFAppState()
                                                            .FiltrAdressComment !=
                                                        '')
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .FiltrAdressComment,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            StyledDivider(
                                              thickness: 1.0,
                                              color: Color(0xFFC6C6C8),
                                              lineStyle:
                                                  DividerLineStyle.dotted,
                                            ),
                                            if (FFAppState().FiltrMeetComment !=
                                                    null &&
                                                FFAppState().FiltrMeetComment !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Дополнительные пожелания',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'DIN Round Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (FFAppState()
                                                            .FiltrMeetComment !=
                                                        null &&
                                                    FFAppState()
                                                            .FiltrMeetComment !=
                                                        '')
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .FiltrMeetComment,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 8.0, 60.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (FFAppState().FiltrMeetComment !=
                                                    null &&
                                                FFAppState().FiltrMeetComment !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Способ оплаты',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'DIN Round Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Баланс МамаОК',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 8.0, 60.0, 150.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (FFAppState().haveTarif != 1)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  if (FFAppState()
                                                              .FiltrMeetComment !=
                                                          null &&
                                                      FFAppState()
                                                              .FiltrMeetComment !=
                                                          '')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Стоимость встречи',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                              .FiltrMeetComment !=
                                                          null &&
                                                      FFAppState()
                                                              .FiltrMeetComment !=
                                                          '')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${containerPriceListRecord?.oneMeet?.toString()} руб.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'DIN Round Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (((FFAppState().haveTarif != 1) &&
                                            (containerPriceListRecord!.price <=
                                                widget.customer!.balace)) ||
                                        (FFAppState().haveTarif == 1))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            60.0, 0.0, 60.0, 16.0),
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
                                                    FlutterFlowTheme.of(context)
                                                        .shadow,
                                                offset: Offset(0.0, 8.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (FFAppState().haveTarif == 1) {
                                                await FFAppState()
                                                    .filtrTarifCustomer!
                                                    .update({
                                                  'Count': FieldValue.increment(
                                                      -(1)),
                                                });

                                                await MeetingsRecord.collection
                                                    .doc()
                                                    .set(
                                                        createMeetingsRecordData(
                                                      date: FFAppState()
                                                          .DayMeeting,
                                                      placeStart: FFAppState()
                                                          .FiltrAdressString,
                                                      refCustomer: widget
                                                          .customer?.reference,
                                                      refCompanion: widget
                                                          .companion?.reference,
                                                      refWard: widget
                                                          .customer?.wardRef,
                                                      statusNom: 1,
                                                      price:
                                                          containerPriceListRecord
                                                              ?.oneMeet,
                                                      iDCustomer:
                                                          widget.customer?.uid,
                                                      iDCompanion:
                                                          widget.companion?.uid,
                                                      iDWard: widget
                                                          .customer?.wardID,
                                                      customerName: widget
                                                          .customer
                                                          ?.displayName,
                                                      customerFathName: widget
                                                          .customer?.fatherName,
                                                      castomerSurname: widget
                                                          .customer?.surname,
                                                      customerPhone: widget
                                                          .customer
                                                          ?.phoneNumber,
                                                      companName: widget
                                                          .companion
                                                          ?.displayName,
                                                      companFathName: widget
                                                          .companion
                                                          ?.fatherName,
                                                      companSurname: widget
                                                          .companion?.surname,
                                                      companionPhone: widget
                                                          .companion
                                                          ?.phoneNumber,
                                                      wardName: widget
                                                          .customer?.wardName,
                                                      wardSurname: widget
                                                          .customer
                                                          ?.wardSurmame,
                                                      wardPhone: widget
                                                          .customer?.wardPhone,
                                                      pricing:
                                                          containerPriceListRecord
                                                              ?.name,
                                                      adressComment: FFAppState()
                                                          .FiltrAdressComment,
                                                      meetComment: FFAppState()
                                                          .FiltrMeetComment,
                                                      wardFathName: widget
                                                          .customer
                                                          ?.wardFhatherName,
                                                      wardFoto: widget
                                                          .customer?.wardFoto,
                                                      compFoto: widget
                                                          .companion?.photoUrl,
                                                      createTime:
                                                          getCurrentTimestamp,
                                                      nomber:
                                                          columnNomberMeetRecord
                                                              ?.number,
                                                      status: 'Назначена',
                                                      adresLatLon: FFAppState()
                                                          .AdresLatLon,
                                                      dateClear: functions
                                                          .clearDay(FFAppState()
                                                              .DayMeeting!),
                                                      uidTarif: FFAppState()
                                                          .filtrTarifNom,
                                                    ));
                                              } else {
                                                await MeetingsRecord.collection
                                                    .doc()
                                                    .set(
                                                        createMeetingsRecordData(
                                                      date: FFAppState()
                                                          .DayMeeting,
                                                      placeStart: FFAppState()
                                                          .FiltrAdressString,
                                                      refCustomer: widget
                                                          .customer?.reference,
                                                      refCompanion: widget
                                                          .companion?.reference,
                                                      refWard: widget
                                                          .customer?.wardRef,
                                                      statusNom: 1,
                                                      price:
                                                          containerPriceListRecord
                                                              ?.oneMeet,
                                                      iDCustomer:
                                                          widget.customer?.uid,
                                                      iDCompanion:
                                                          widget.companion?.uid,
                                                      iDWard: widget
                                                          .customer?.wardID,
                                                      customerName: widget
                                                          .customer
                                                          ?.displayName,
                                                      customerFathName: widget
                                                          .customer?.fatherName,
                                                      castomerSurname: widget
                                                          .customer?.surname,
                                                      customerPhone: widget
                                                          .customer
                                                          ?.phoneNumber,
                                                      companName: widget
                                                          .companion
                                                          ?.displayName,
                                                      companFathName: widget
                                                          .companion
                                                          ?.fatherName,
                                                      companSurname: widget
                                                          .companion?.surname,
                                                      companionPhone: widget
                                                          .companion
                                                          ?.phoneNumber,
                                                      wardName: widget
                                                          .customer?.wardName,
                                                      wardSurname: widget
                                                          .customer
                                                          ?.wardSurmame,
                                                      wardPhone: widget
                                                          .customer?.wardPhone,
                                                      pricing:
                                                          containerPriceListRecord
                                                              ?.name,
                                                      adressComment: FFAppState()
                                                          .FiltrAdressComment,
                                                      meetComment: FFAppState()
                                                          .FiltrMeetComment,
                                                      wardFathName: widget
                                                          .customer
                                                          ?.wardFhatherName,
                                                      wardFoto: widget
                                                          .customer?.wardFoto,
                                                      compFoto: widget
                                                          .companion?.photoUrl,
                                                      createTime:
                                                          getCurrentTimestamp,
                                                      nomber:
                                                          columnNomberMeetRecord
                                                              ?.number,
                                                      status: 'Назначена',
                                                      adresLatLon: FFAppState()
                                                          .AdresLatLon,
                                                      dateClear: functions
                                                          .clearDay(FFAppState()
                                                              .DayMeeting!),
                                                      uidTarif:
                                                          columnNomberMeetRecord
                                                              ?.number,
                                                    ));

                                                await TarifsCustomerRecord
                                                    .collection
                                                    .doc()
                                                    .set({
                                                  ...createTarifsCustomerRecordData(
                                                    name:
                                                        containerPriceListRecord
                                                            ?.name,
                                                    dateCreate:
                                                        getCurrentTimestamp,
                                                    count: functions.mines1(
                                                        containerPriceListRecord!
                                                            .count),
                                                    iDCustomer:
                                                        widget.customer?.uid,
                                                    description:
                                                        containerPriceListRecord
                                                            ?.desciption,
                                                    image:
                                                        containerPriceListRecord
                                                            ?.image,
                                                    uidTarif:
                                                        columnNomberMeetRecord
                                                            ?.number,
                                                  ),
                                                  'NomberMeet': [
                                                    columnNomberMeetRecord
                                                        ?.number
                                                  ],
                                                });

                                                await BalanceRecord.collection
                                                    .doc()
                                                    .set(
                                                        createBalanceRecordData(
                                                      summ:
                                                          containerPriceListRecord
                                                              ?.price,
                                                      codePay: 'Оплата тарифа',
                                                      date: getCurrentTimestamp,
                                                      iDCustomer:
                                                          widget.customer?.uid,
                                                      zachSpisan: 'Списание',
                                                    ));

                                                await widget.customer!.reference
                                                    .update({
                                                  'Balace': FieldValue.increment(
                                                      -(containerPriceListRecord!
                                                          .price)),
                                                });
                                              }

                                              await PushRecord.collection
                                                  .doc()
                                                  .set({
                                                ...createPushRecordData(
                                                  date: getCurrentTimestamp,
                                                  head:
                                                      'Новый запрос на встречу',
                                                  text:
                                                      'Вам предлагают встречу ${dateTimeFormat(
                                                    'd/M/y',
                                                    FFAppState().DayMeeting,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  )} ${dateTimeFormat(
                                                    'Hm',
                                                    FFAppState().DayMeeting,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  )}',
                                                  number: columnNomberMeetRecord
                                                      ?.number,
                                                  read: '0',
                                                ),
                                                'IdUser': [
                                                  widget.companion?.reference
                                                ],
                                              });

                                              await columnNomberMeetRecord!
                                                  .reference
                                                  .update({
                                                'Number':
                                                    FieldValue.increment(1),
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .FoltrPlanVstrechiFree = '';
                                              });

                                              context.pushNamed(
                                                'AdminMeeting',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 1000),
                                                  ),
                                                },
                                              );

                                              triggerPushNotification(
                                                notificationTitle:
                                                    'Новый запрос на встречу',
                                                notificationText:
                                                    'Вам предлагают встречу ${dateTimeFormat(
                                                  'd/M/y',
                                                  FFAppState().DayMeeting,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )} ${dateTimeFormat(
                                                  'Hm',
                                                  FFAppState().DayMeeting,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )}',
                                                userRefs: [
                                                  FFAppState().filtrCompanion!
                                                ],
                                                initialPageName:
                                                    'HomeCompanion',
                                                parameterData: {},
                                              );
                                            },
                                            text: 'ОТПРАВИТЬ ЗАЯВКУ',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0x00FFFFFF),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'DIN Round Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: false,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
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
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
