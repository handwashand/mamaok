import '/admin/meeting/admin_adress_accept/admin_adress_accept_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_map_model.dart';
export 'admin_map_model.dart';

class AdminMapWidget extends StatefulWidget {
  const AdminMapWidget({
    Key? key,
    required this.customer,
    required this.companion,
  }) : super(key: key);

  final UsersRecord? customer;
  final UsersRecord? companion;

  @override
  _AdminMapWidgetState createState() => _AdminMapWidgetState();
}

class _AdminMapWidgetState extends State<AdminMapWidget> {
  late AdminMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMapModel());

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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              FlutterFlowGoogleMap(
                controller: _model.googleMapsController,
                onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                initialLocation: _model.googleMapsCenter ??=
                    LatLng(55.753605, 37.621094),
                markerColor: GoogleMarkerColor.green,
                mapType: MapType.normal,
                style: GoogleMapStyle.standard,
                initialZoom: 14.0,
                allowInteraction: true,
                allowZoom: true,
                showZoomControls: true,
                showLocation: false,
                showCompass: false,
                showMapToolbar: false,
                showTraffic: false,
                centerMapOnMarkerTap: true,
              ),
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
                        context.pushNamed(
                          'AdminAdressList',
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
                    Text(
                      'Адрес  родителя',
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 36.0),
                  child: Icon(
                    FFIcons.kvector,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 36.0,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 200.0, 24.0),
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
                        _model.apiResultupv1 = await AdressAddCall.call(
                          lat: functions.latitude(_model.googleMapsCenter),
                          lon: functions.longitude(_model.googleMapsCenter),
                          format: 'geojson',
                        );
                        await Future.delayed(
                            const Duration(milliseconds: 1000));
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Color(0x29000000),
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: AdminAdressAcceptWidget(
                                  city: AdressAddCall.city(
                                    (_model.apiResultupv1?.jsonBody ?? ''),
                                  ).toString(),
                                  house: AdressAddCall.house(
                                    (_model.apiResultupv1?.jsonBody ?? ''),
                                  ).toString(),
                                  street: AdressAddCall.street(
                                    (_model.apiResultupv1?.jsonBody ?? ''),
                                  ).toString(),
                                  adress: _model.googleMapsCenter!,
                                  companion: widget.companion!,
                                  customer: widget.customer!,
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        setState(() {});
                      },
                      text: 'ВЫБРАТЬ НА КАРТЕ',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: double.infinity,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
