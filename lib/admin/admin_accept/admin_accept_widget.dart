import '/admin/admin_no_dop_money/admin_no_dop_money_widget.dart';
import '/admin/admin_no_foto/admin_no_foto_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'admin_accept_model.dart';
export 'admin_accept_model.dart';

class AdminAcceptWidget extends StatefulWidget {
  const AdminAcceptWidget({
    Key? key,
    required this.customer,
    required this.meeting,
  }) : super(key: key);

  final UsersRecord? customer;
  final MeetingsRecord? meeting;

  @override
  _AdminAcceptWidgetState createState() => _AdminAcceptWidgetState();
}

class _AdminAcceptWidgetState extends State<AdminAcceptWidget> {
  late AdminAcceptModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminAcceptModel());

    _model.relizeController ??=
        TextEditingController(text: widget.meeting?.relise);
    _model.commentController ??= TextEditingController();
    _model.priceController ??= TextEditingController();
    _model.priceCompanionController ??= TextEditingController();
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
        width: 450.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondary,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 14.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 36.0,
                      fillColor: Color(0x00FFFFFF),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Отчет о встрече',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Text(
                        'Отчет о встрече',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
                      child: TextFormField(
                        controller: _model.relizeController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.relizeController',
                          Duration(milliseconds: 1000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                        maxLines: 5,
                        validator: _model.relizeControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Text(
                      'Фото с мероприятия',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                child: StreamBuilder<List<FotoMeetingRecord>>(
                  stream: queryFotoMeetingRecord(
                    queryBuilder: (fotoMeetingRecord) => fotoMeetingRecord
                        .where('NumberMeet', isEqualTo: widget.meeting?.nomber),
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
                    List<FotoMeetingRecord> listViewFotoMeetingRecordList =
                        snapshot.data!;
                    if (listViewFotoMeetingRecordList.isEmpty) {
                      return AdminNoFotoWidget();
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewFotoMeetingRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewFotoMeetingRecord =
                            listViewFotoMeetingRecordList[listViewIndex];
                        return Container(
                          width: 80.0,
                          height: 120.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.network(
                                          listViewFotoMeetingRecord.foto,
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: listViewFotoMeetingRecord.foto,
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: listViewFotoMeetingRecord.foto,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      listViewFotoMeetingRecord.foto,
                                      width: 140.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
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
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Text(
                      'Комментарий ко встрече',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
                child: TextFormField(
                  controller: _model.commentController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.commentController',
                    Duration(milliseconds: 1000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          fontSize: 16.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                  maxLines: 10,
                  validator:
                      _model.commentControllerValidator.asValidator(context),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Text(
                      'Цена по тарифу ${widget.meeting?.price?.toString()} руб.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                      child: Text(
                        'Дополнительные расходы (руб.)',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: StreamBuilder<List<DopMoneyMeetingRecord>>(
                  stream: queryDopMoneyMeetingRecord(
                    queryBuilder: (dopMoneyMeetingRecord) =>
                        dopMoneyMeetingRecord.where('NomMeet',
                            isEqualTo: widget.meeting?.nomber),
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
                    List<DopMoneyMeetingRecord>
                        listViewDopMoneyMeetingRecordList = snapshot.data!;
                    if (listViewDopMoneyMeetingRecordList.isEmpty) {
                      return AdminNoDopMoneyWidget();
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewDopMoneyMeetingRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewDopMoneyMeetingRecord =
                            listViewDopMoneyMeetingRecordList[listViewIndex];
                        return Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  valueOrDefault<String>(
                                                    listViewDopMoneyMeetingRecord
                                                        .foto,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mom-ok-6p0dfi/assets/t88rbqohp3f3/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D1%88%D0%BA%D0%B0_%D0%B4%D0%BB%D1%8F_%D1%81%D1%82%D0%B0%D1%82%D0%B5%D0%B8%CC%86_%D0%BB%D0%B8%D0%BB%D0%BE%D0%B2%D0%B0%D1%8F.png',
                                                  ),
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: valueOrDefault<String>(
                                                  listViewDopMoneyMeetingRecord
                                                      .foto,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mom-ok-6p0dfi/assets/t88rbqohp3f3/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D1%88%D0%BA%D0%B0_%D0%B4%D0%BB%D1%8F_%D1%81%D1%82%D0%B0%D1%82%D0%B5%D0%B8%CC%86_%D0%BB%D0%B8%D0%BB%D0%BE%D0%B2%D0%B0%D1%8F.png' +
                                                      '$listViewIndex',
                                                ),
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: valueOrDefault<String>(
                                            listViewDopMoneyMeetingRecord.foto,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mom-ok-6p0dfi/assets/t88rbqohp3f3/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D1%88%D0%BA%D0%B0_%D0%B4%D0%BB%D1%8F_%D1%81%D1%82%D0%B0%D1%82%D0%B5%D0%B8%CC%86_%D0%BB%D0%B8%D0%BB%D0%BE%D0%B2%D0%B0%D1%8F.png' +
                                                '$listViewIndex',
                                          ),
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(2.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                listViewDopMoneyMeetingRecord
                                                    .foto,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mom-ok-6p0dfi/assets/t88rbqohp3f3/%D0%97%D0%B0%D0%B3%D1%80%D1%83%D1%88%D0%BA%D0%B0_%D0%B4%D0%BB%D1%8F_%D1%81%D1%82%D0%B0%D1%82%D0%B5%D0%B8%CC%86_%D0%BB%D0%B8%D0%BB%D0%BE%D0%B2%D0%B0%D1%8F.png',
                                              ),
                                              width: 44.0,
                                              height: 44.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          listViewDopMoneyMeetingRecord.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'DIN Round Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Text(
                                          '${listViewDopMoneyMeetingRecord.money.toString()} руб.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'DIN Round Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              StyledDivider(
                                thickness: 1.0,
                                color: Color(0xFFC6C6C8),
                                lineStyle: DividerLineStyle.dotted,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Text(
                      'Окончательная цена (руб.)',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
                child: TextFormField(
                  controller: _model.priceController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType: TextInputType.number,
                  validator:
                      _model.priceControllerValidator.asValidator(context),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Text(
                      'Сумма выплаты компаньону',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DIN Round Pro',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
                child: TextFormField(
                  controller: _model.priceCompanionController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType: TextInputType.number,
                  validator: _model.priceCompanionControllerValidator
                      .asValidator(context),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (!((_model.priceController.text == null ||
                            _model.priceController.text == '') ||
                        (_model.priceCompanionController.text == null ||
                            _model.priceCompanionController.text == ''))) {
                      await widget.meeting!.reference
                          .update(createMeetingsRecordData(
                        status: 'Подтверждена',
                        statusNom: 6,
                        endPrice: functions.mines(
                            int.parse(_model.priceController.text),
                            widget.meeting!.price),
                      ));

                      await widget.meeting!.refCompanion!.update({
                        'Balace': FieldValue.increment(
                            int.parse(_model.priceCompanionController.text)),
                      });

                      await widget.meeting!.refCustomer!.update({
                        'Balace': FieldValue.increment(-(functions.mines(
                            int.parse(_model.priceController.text),
                            widget.meeting!.price))),
                      });

                      await BalanceRecord.collection
                          .doc()
                          .set(createBalanceRecordData(
                            summ: int.tryParse(
                                _model.priceCompanionController.text),
                            codePay: 'Пополнение баланса',
                            date: getCurrentTimestamp,
                            iDCustomer: widget.meeting?.iDCompanion,
                            zachSpisan: 'Зачисление',
                          ));

                      await PushRecord.collection.doc().set({
                        ...createPushRecordData(
                          text:
                              'Посмотрите, пожалуйста, отчет о встрече и завершите ее согласованием.',
                          head: 'Вам доступен отчет о встрече',
                          date: getCurrentTimestamp,
                          number: widget.meeting?.nomber,
                          read: '0',
                        ),
                        'IdUser': [widget.meeting?.refCustomer],
                      });

                      context.pushNamed('AdminMeeting');
                    }
                  },
                  text: 'Завершить',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'DIN Round Pro',
                          color: Colors.white,
                          useGoogleFonts: false,
                        ),
                    elevation: 2.0,
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
        ),
      ),
    );
  }
}
