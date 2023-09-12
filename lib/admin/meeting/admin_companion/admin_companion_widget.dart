import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_companion_model.dart';
export 'admin_companion_model.dart';

class AdminCompanionWidget extends StatefulWidget {
  const AdminCompanionWidget({
    Key? key,
    required this.customer,
  }) : super(key: key);

  final UsersRecord? customer;

  @override
  _AdminCompanionWidgetState createState() => _AdminCompanionWidgetState();
}

class _AdminCompanionWidgetState extends State<AdminCompanionWidget> {
  late AdminCompanionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminCompanionModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 36.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        FFIcons.kvector3Stroke,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'AdminHome',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Text(
                        'Кабинет администратора',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'DIN Round Pro',
                                  fontSize: 28.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '${widget.customer?.surname} ${widget.customer?.displayName} ${widget.customer?.fatherName}',
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 50.0, 0.0),
                          child: StreamBuilder<List<UsersRecord>>(
                            stream: queryUsersRecord(
                              queryBuilder: (usersRecord) => usersRecord
                                  .where('Role', isEqualTo: 'companion'),
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
                                          FlutterFlowTheme.of(context).primary,
                                      size: 0.0,
                                    ),
                                  ),
                                );
                              }
                              List<UsersRecord> listViewUsersRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewUsersRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewUsersRecord =
                                      listViewUsersRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: StreamBuilder<
                                        List<TarifsCustomerRecord>>(
                                      stream: queryTarifsCustomerRecord(
                                        queryBuilder: (tarifsCustomerRecord) =>
                                            tarifsCustomerRecord
                                                .where('IDCustomer',
                                                    isEqualTo:
                                                        widget.customer?.uid)
                                                .where('Count',
                                                    isNotEqualTo: 0),
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
                                        List<TarifsCustomerRecord>
                                            containerTarifsCustomerRecordList =
                                            snapshot.data!;
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 4.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.25,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Text(
                                                    '${listViewUsersRecord.surname} ${listViewUsersRecord.displayName} ${listViewUsersRecord.fatherName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 4.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 8.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  icon: Icon(
                                                    Icons.add_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 18.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'AdminTafifsCustomer',
                                                      queryParameters: {
                                                        'customer':
                                                            serializeParam(
                                                          widget.customer,
                                                          ParamType.Document,
                                                        ),
                                                        'companion':
                                                            serializeParam(
                                                          listViewUsersRecord,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'customer':
                                                            widget.customer,
                                                        'companion':
                                                            listViewUsersRecord,
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  1000),
                                                        ),
                                                      },
                                                    );

                                                    if (containerTarifsCustomerRecordList
                                                            .length >
                                                        0) {
                                                      context.pushNamed(
                                                        'AdminTafifsCustomer',
                                                        queryParameters: {
                                                          'customer':
                                                              serializeParam(
                                                            widget.customer,
                                                            ParamType.Document,
                                                          ),
                                                          'companion':
                                                              serializeParam(
                                                            listViewUsersRecord,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'customer':
                                                              widget.customer,
                                                          'companion':
                                                              listViewUsersRecord,
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    1000),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      context.pushNamed(
                                                        'AdminTarifs',
                                                        queryParameters: {
                                                          'customer':
                                                              serializeParam(
                                                            widget.customer,
                                                            ParamType.Document,
                                                          ),
                                                          'companion':
                                                              serializeParam(
                                                            listViewUsersRecord,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'customer':
                                                              widget.customer,
                                                          'companion':
                                                              listViewUsersRecord,
                                                        },
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
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
