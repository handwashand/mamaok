import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_accept_model.dart';
export 'customer_accept_model.dart';

class CustomerAcceptWidget extends StatefulWidget {
  const CustomerAcceptWidget({
    Key? key,
    required this.meet,
  }) : super(key: key);

  final MeetingsRecord? meet;

  @override
  _CustomerAcceptWidgetState createState() => _CustomerAcceptWidgetState();
}

class _CustomerAcceptWidgetState extends State<CustomerAcceptWidget> {
  late CustomerAcceptModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerAcceptModel());

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
        width: double.infinity,
        height: 450.0,
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
                      context.pushNamed('FindCompStart');
                    },
                  ),
                  Text(
                    'Оцените прошедшую встречу',
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
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    onRatingUpdate: (newValue) {
                      setState(() => _model.ratingBarValue = newValue);
                      setState(() {
                        FFAppState().RaitingStars =
                            _model.ratingBarValue!.round();
                      });
                    },
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFF9F0A),
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue ??= 0.0,
                    unratedColor: FlutterFlowTheme.of(context).lineColor,
                    itemCount: 5,
                    itemSize: 40.0,
                    glowColor: Color(0xFFFF9F0A),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    () {
                      if (FFAppState().RaitingStars == 5) {
                        return 'Отлично';
                      } else if (FFAppState().RaitingStars == 4) {
                        return 'Хорошо';
                      } else if (FFAppState().RaitingStars == 3) {
                        return 'Нормально';
                      } else if (FFAppState().RaitingStars == 2) {
                        return 'Плохо';
                      } else if (FFAppState().RaitingStars == 1) {
                        return 'Ужасно';
                      } else {
                        return '-';
                      }
                    }(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DIN Round Pro',
                          color: Color(0xFFFF9F0A),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Комментарий ко встрече',
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
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
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
                maxLines: 8,
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
                    if ((_model.ratingBarValue != null) &&
                        (_model.ratingBarValue != 0.0)) {
                      HapticFeedback.lightImpact();

                      await widget.meet!.reference
                          .update(createMeetingsRecordData(
                        status: 'Согласована',
                        statusNom: 7,
                        customerComment: _model.commentController.text,
                        raiting: _model.ratingBarValue?.round(),
                      ));

                      await widget.meet!.refCompanion!.update({
                        'PointRaiting': FieldValue.increment(1),
                        'Raiting': FieldValue.increment(_model.ratingBarValue!),
                      });
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Оцените, пожалуйста встречу',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }
                  },
                  text: 'СОХРАНИТЬ',
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
