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

class CancelCompMeetModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Varyant widget.
  TextEditingController? varyantController;
  String? Function(BuildContext, String?)? varyantControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    varyantController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
