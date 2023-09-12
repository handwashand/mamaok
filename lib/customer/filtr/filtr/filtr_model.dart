import '/customer/filtr/age/age_widget.dart';
import '/customer/filtr/city/city_widget.dart';
import '/customer/filtr/experience/experience_widget.dart';
import '/customer/filtr/interests/interests_widget.dart';
import '/customer/filtr/raiting_filtr/raiting_filtr_widget.dart';
import '/customer/filtr/sex/sex_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FiltrModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
