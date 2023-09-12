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

class Adress2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for adres widget.
  TextEditingController? adresController;
  String? Function(BuildContext, String?)? adresControllerValidator;
  // State field(s) for podezd widget.
  TextEditingController? podezdController;
  String? Function(BuildContext, String?)? podezdControllerValidator;
  // State field(s) for atazh widget.
  TextEditingController? atazhController;
  String? Function(BuildContext, String?)? atazhControllerValidator;
  // State field(s) for kv widget.
  TextEditingController? kvController;
  String? Function(BuildContext, String?)? kvControllerValidator;
  // State field(s) for domofon widget.
  TextEditingController? domofonController;
  String? Function(BuildContext, String?)? domofonControllerValidator;
  // State field(s) for comment widget.
  TextEditingController? commentController;
  String? Function(BuildContext, String?)? commentControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    adresController?.dispose();
    podezdController?.dispose();
    atazhController?.dispose();
    kvController?.dispose();
    domofonController?.dispose();
    commentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
