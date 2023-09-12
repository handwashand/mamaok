import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_adress_model.dart';
export 'admin_adress_model.dart';

class AdminAdressWidget extends StatefulWidget {
  const AdminAdressWidget({
    Key? key,
    required this.city,
    required this.street,
    required this.house,
    required this.adress,
    required this.customer,
    required this.companion,
  }) : super(key: key);

  final String? city;
  final String? street;
  final String? house;
  final LatLng? adress;
  final UsersRecord? customer;
  final UsersRecord? companion;

  @override
  _AdminAdressWidgetState createState() => _AdminAdressWidgetState();
}

class _AdminAdressWidgetState extends State<AdminAdressWidget> {
  late AdminAdressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminAdressModel());

    _model.adresController ??= TextEditingController(
        text:
            '${functions.nullStreet(widget.city)}${functions.nullstreetCommo(widget.city)}${functions.nullStreet(widget.street)}${functions.nullstreetCommo(widget.street)}${functions.nullStreet(widget.house)}');
    _model.podezdController ??= TextEditingController();
    _model.atazhController ??= TextEditingController();
    _model.kvController ??= TextEditingController();
    _model.domofonController ??= TextEditingController();
    _model.commentController ??= TextEditingController();
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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: 1000.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      FFIcons.kunion2,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 18.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'AdminMap',
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
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 1000),
                          ),
                        },
                      );
                    },
                  ),
                  Text(
                    'Адрес родителя',
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
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Адрес',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DIN Round Pro',
                          fontSize: 12.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 40.0, 0.0),
              child: TextFormField(
                controller: _model.adresController,
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'DIN Round Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        useGoogleFonts: false,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Color(0x14727480),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                validator: _model.adresControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 600.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                      child: Text(
                        'Подъезд',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontSize: 12.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Этаж',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontSize: 12.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 600.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.podezdController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'DIN Round Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                useGoogleFonts: false,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Color(0x14727480),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        keyboardType: TextInputType.number,
                        validator: _model.podezdControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 300.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.atazhController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'DIN Round Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  useGoogleFonts: false,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Color(0x14727480),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.number,
                          validator: _model.atazhControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 600.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                      child: Text(
                        'Квартира',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontSize: 12.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Домофон',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              fontSize: 12.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 600.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.kvController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'DIN Round Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                useGoogleFonts: false,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Color(0x14727480),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        keyboardType: TextInputType.number,
                        validator:
                            _model.kvControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 300.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.domofonController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'DIN Round Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  useGoogleFonts: false,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Color(0x14727480),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.domofonControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Комментарий к адресу',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DIN Round Pro',
                          fontSize: 12.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 40.0, 0.0),
              child: TextFormField(
                controller: _model.commentController,
                obscureText: false,
                decoration: InputDecoration(
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'DIN Round Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        useGoogleFonts: false,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Color(0x14727480),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                maxLines: 3,
                validator:
                    _model.commentControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
              child: Container(
                width: double.infinity,
                height: 48.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (_model.adresController.text != null &&
                        _model.adresController.text != '') {
                      setState(() {
                        FFAppState().FiltrAdressString =
                            '${_model.adresController.text}, ${_model.podezdController.text != null && _model.podezdController.text != '' ? 'подъезд ' : ''}${_model.podezdController.text != null && _model.podezdController.text != '' ? _model.podezdController.text : ''}${_model.podezdController.text != null && _model.podezdController.text != '' ? ', ' : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? 'этаж ' : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? _model.atazhController.text : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? ', ' : ''}${_model.kvController.text != null && _model.kvController.text != '' ? 'квартира ' : ''}${_model.kvController.text != null && _model.kvController.text != '' ? _model.kvController.text : ''}${_model.kvController.text != null && _model.kvController.text != '' ? ',  ' : ''}${_model.domofonController.text != null && _model.domofonController.text != '' ? 'домофон' : ''}${_model.domofonController.text != null && _model.domofonController.text != '' ? _model.domofonController.text : ''}';
                        FFAppState().AdresLatLon = widget.adress;
                      });

                      await AdressesRecord.collection
                          .doc()
                          .set(createAdressesRecordData(
                            adress:
                                '${_model.adresController.text}, ${_model.podezdController.text != null && _model.podezdController.text != '' ? 'подъезд ' : ''}${_model.podezdController.text != null && _model.podezdController.text != '' ? _model.podezdController.text : ''}${_model.podezdController.text != null && _model.podezdController.text != '' ? ', ' : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? 'этаж ' : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? _model.atazhController.text : ''}${_model.atazhController.text != null && _model.atazhController.text != '' ? ', ' : ''}${_model.kvController.text != null && _model.kvController.text != '' ? 'квартира ' : ''}${_model.kvController.text != null && _model.kvController.text != '' ? _model.kvController.text : ''}${_model.kvController.text != null && _model.kvController.text != '' ? ',  ' : ''}${_model.domofonController.text != null && _model.domofonController.text != '' ? 'домофон' : ''}${_model.domofonController.text != null && _model.domofonController.text != '' ? _model.domofonController.text : ''}',
                            latLon: widget.adress,
                            iDcustomer: widget.customer?.uid,
                            comment: _model.commentController.text,
                          ));
                      if (_model.commentController.text != null &&
                          _model.commentController.text != '') {
                        setState(() {
                          FFAppState().FiltrAdressComment =
                              _model.commentController.text;
                        });
                      }

                      context.pushNamed(
                        'AdminTimeMeet',
                        queryParameters: {
                          'companion': serializeParam(
                            widget.companion,
                            ParamType.Document,
                          ),
                          'customer': serializeParam(
                            widget.customer,
                            ParamType.Document,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          'companion': widget.companion,
                          'customer': widget.customer,
                        },
                      );
                    }
                  },
                  text: 'СОХРАНИТЬ АДРЕС',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x00FFFFFF),
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily: 'DIN Round Pro',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
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
          ],
        ),
      ),
    );
  }
}
