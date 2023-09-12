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

class AdminAcceptModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Relize widget.
  TextEditingController? relizeController;
  String? Function(BuildContext, String?)? relizeControllerValidator;
  // State field(s) for Comment widget.
  TextEditingController? commentController;
  String? Function(BuildContext, String?)? commentControllerValidator;
  // State field(s) for Price widget.
  TextEditingController? priceController;
  String? Function(BuildContext, String?)? priceControllerValidator;
  // State field(s) for PriceCompanion widget.
  TextEditingController? priceCompanionController;
  String? Function(BuildContext, String?)? priceCompanionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    relizeController?.dispose();
    commentController?.dispose();
    priceController?.dispose();
    priceCompanionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
