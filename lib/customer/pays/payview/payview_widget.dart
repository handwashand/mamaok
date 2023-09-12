import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payview_model.dart';
export 'payview_model.dart';

class PayviewWidget extends StatefulWidget {
  const PayviewWidget({
    Key? key,
    required this.vozv,
  }) : super(key: key);

  final int? vozv;

  @override
  _PayviewWidgetState createState() => _PayviewWidgetState();
}

class _PayviewWidgetState extends State<PayviewWidget> {
  late PayviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayviewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().PayID = valueOrDefault(currentUserDocument?.payID, '');
      });
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 500),
        callback: (timer) async {
          _model.apiResults94 = await UkasaStatusCall.call(
            idpay: FFAppState().PayID,
          );
          await Future.delayed(const Duration(milliseconds: 1000));
          setState(() {
            FFAppState().PayStatus = UkasaStatusCall.status(
              (_model.apiResults94?.jsonBody ?? ''),
            ).toString().toString();
          });
          if (FFAppState().PayStatus != 'pending') {
            if (FFAppState().PayStatus == 'succeeded') {
              _model.instantTimer?.cancel();

              await BalanceRecord.collection.doc().set(createBalanceRecordData(
                    summ: valueOrDefault(currentUserDocument?.paySumm, 0),
                    codePay: 'Пополнение баланса',
                    date: getCurrentTimestamp,
                    iDCustomer: currentUserUid,
                    zachSpisan: 'Зачисление',
                  ));

              await currentUserReference!.update({
                ...createUsersRecordData(
                  payID: '',
                  payURL: '',
                ),
                'Balace': FieldValue.increment(
                    valueOrDefault(currentUserDocument?.paySumm, 0)),
                'PaySumm': FieldValue.delete(),
              });
              setState(() {
                FFAppState().PayID = '';
              });
              if (widget.vozv == 2) {
                context.pushNamed('ZayavkaEnd');
              } else {
                context.pushNamed('HomePage');
              }
            } else {
              if (FFAppState().PayStatus == 'canceled') {
                _model.instantTimer?.cancel();

                await currentUserReference!.update({
                  ...createUsersRecordData(
                    payID: '',
                    payURL: '',
                  ),
                  'PaySumm': FieldValue.delete(),
                });
                if (widget.vozv == 2) {
                  context.pushNamed('ZayavkaEnd');
                } else {
                  context.pushNamed('HomePage');
                }
              } else {
                _model.instantTimer?.cancel();

                await currentUserReference!.update({
                  ...createUsersRecordData(
                    payID: '',
                    payURL: '',
                  ),
                  'PaySumm': FieldValue.delete(),
                });
                if (widget.vozv == 2) {
                  context.pushNamed('ZayavkaEnd');
                } else {
                  context.pushNamed('HomePage');
                }
              }
            }
          }
        },
        startImmediately: true,
      );
    });

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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowWebView(
                            content:
                                valueOrDefault(currentUserDocument?.payURL, ''),
                            bypass: false,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            verticalScroll: true,
                            horizontalScroll: false,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 20.0, 0.0, 20.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              FFIcons.kvector3Stroke,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 18.0,
                            ),
                            onPressed: () async {
                              null?.cancel();

                              context.pushNamed('HomePage');
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                FFAppState().PayStatus,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
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
    );
  }
}
