import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/companion/meeting/cancel_comp_meet2/cancel_comp_meet2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_comp_meet_model.dart';
export 'cancel_comp_meet_model.dart';

class CancelCompMeetWidget extends StatefulWidget {
  const CancelCompMeetWidget({
    Key? key,
    this.metting,
    required this.tarif,
  }) : super(key: key);

  final MeetingsRecord? metting;
  final TarifsCustomerRecord? tarif;

  @override
  _CancelCompMeetWidgetState createState() => _CancelCompMeetWidgetState();
}

class _CancelCompMeetWidgetState extends State<CancelCompMeetWidget> {
  late CancelCompMeetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelCompMeetModel());

    _model.varyantController ??= TextEditingController();
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
        width: double.infinity,
        height: 600.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: Container(
                  width: 54.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFD1D1D6),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Отмена встречи',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 22.0,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'По какой причине вы хотите отменить встречу с подопечным?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DIN Round Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: StreamBuilder<List<CancelCompanipnRecord>>(
                  stream: queryCancelCompanipnRecord(
                    queryBuilder: (cancelCompanipnRecord) =>
                        cancelCompanipnRecord.where('Status', isEqualTo: 1),
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
                    List<CancelCompanipnRecord>
                        listViewCancelCompanipnRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewCancelCompanipnRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewCancelCompanipnRecord =
                            listViewCancelCompanipnRecordList[listViewIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (FFAppState()
                                .cancelCompanion
                                .contains(listViewCancelCompanipnRecord.name)) {
                              await widget.metting!.reference.update({
                                'ChancelCompanion': FieldValue.arrayRemove(
                                    [listViewCancelCompanipnRecord.name]),
                              });
                              setState(() {
                                FFAppState().removeFromCancelCompanion(
                                    listViewCancelCompanipnRecord.name);
                              });
                            } else {
                              await widget.metting!.reference.update({
                                'ChancelCompanion': FieldValue.arrayUnion(
                                    [listViewCancelCompanipnRecord.name]),
                              });
                              setState(() {
                                FFAppState().addToCancelCompanion(
                                    listViewCancelCompanipnRecord.name);
                              });
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 55.0,
                            decoration: BoxDecoration(),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Text(
                                        listViewCancelCompanipnRecord.name,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'DIN Round Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                              .cancelCompanion
                                              .contains(
                                                  listViewCancelCompanipnRecord
                                                      .name))
                                            Container(
                                              width: 24.0,
                                              height: 24.0,
                                              child: Stack(
                                                alignment: AlignmentDirectional(
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
                                                          BorderRadius.circular(
                                                              2.0),
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
                                          if (!FFAppState()
                                              .cancelCompanion
                                              .contains(
                                                  listViewCancelCompanipnRecord
                                                      .name))
                                            Icon(
                                              Icons.crop_din_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 22.0,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 0.5,
                                  endIndent: 16.0,
                                  color: Color(0xFFC6C6C8),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.varyantController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Ваш вариант',
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
                    fillColor: Color(0x15747480),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DIN Round Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        useGoogleFonts: false,
                      ),
                  validator:
                      _model.varyantControllerValidator.asValidator(context),
                ),
              ),
              Spacer(),
              Align(
                alignment: AlignmentDirectional(0.0, -0.6),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
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
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.varyantController.text != null &&
                              _model.varyantController.text != '') {
                            await widget.metting!.reference.update({
                              ...createMeetingsRecordData(
                                status: 'Отменена',
                                statusNom: 0,
                              ),
                              'ChancelCompanion': FieldValue.arrayUnion(
                                  [_model.varyantController.text]),
                            });
                          } else {
                            await widget.metting!.reference
                                .update(createMeetingsRecordData(
                              status: 'Отменена',
                              statusNom: 0,
                            ));
                          }

                          await widget.tarif!.reference.update({
                            'Count': FieldValue.increment(1),
                          });

                          await PushRecord.collection.doc().set({
                            ...createPushRecordData(
                              text: 'Компаньон отменил встречу ${dateTimeFormat(
                                'd/M/y',
                                widget.metting?.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )} ${dateTimeFormat(
                                'Hm',
                                widget.metting?.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )}',
                              head: 'Компаньон отменил встречу',
                              date: getCurrentTimestamp,
                              number: widget.metting?.nomber,
                              read: '0',
                            ),
                            'IdUser': [widget.metting?.refCustomer],
                          });
                          Navigator.pop(context);
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x29000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: CancelCompMeet2Widget(),
                              );
                            },
                          ).then((value) => setState(() {}));

                          triggerPushNotification(
                            notificationTitle: 'Встреча отменена',
                            notificationText:
                                'Компаньон не смог принять встречу. Попробуйте подобрать другого помощника. ',
                            notificationSound: 'default',
                            userRefs: [widget.metting!.refCustomer!],
                            initialPageName: 'HomePage',
                            parameterData: {},
                          );
                        },
                        text: 'ОТМЕНИТЬ ВСТРЕЧУ',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
