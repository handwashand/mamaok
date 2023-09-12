import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RegAvtoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for PSW widget.
  TextEditingController? pswController;
  late bool pswVisibility;
  String? Function(BuildContext, String?)? pswControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pswVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailController?.dispose();
    pswController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
