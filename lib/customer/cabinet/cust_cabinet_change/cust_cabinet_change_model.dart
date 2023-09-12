import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/customer/cabinet/cancel_ward/cancel_ward_widget.dart';
import '/customer/cabinet/delete_user/delete_user_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CustCabinetChangeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Name2 widget.
  TextEditingController? name2Controller;
  String? Function(BuildContext, String?)? name2ControllerValidator;
  // State field(s) for FhatherName widget.
  TextEditingController? fhatherNameController;
  String? Function(BuildContext, String?)? fhatherNameControllerValidator;
  // State field(s) for Family widget.
  TextEditingController? familyController;
  String? Function(BuildContext, String?)? familyControllerValidator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController1;
  String? Function(BuildContext, String?)? phoneController1Validator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController2;
  String? Function(BuildContext, String?)? phoneController2Validator;
  // State field(s) for PhoneCust widget.
  TextEditingController? phoneCustController1;
  final phoneCustMask1 = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? phoneCustController1Validator;
  // State field(s) for PhoneCust widget.
  TextEditingController? phoneCustController2;
  final phoneCustMask2 = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? phoneCustController2Validator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController3;
  final phoneMask3 = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? phoneController3Validator;
  // State field(s) for MailCustomer widget.
  TextEditingController? mailCustomerController;
  String? Function(BuildContext, String?)? mailCustomerControllerValidator;
  // State field(s) for Mail widget.
  TextEditingController? mailController;
  String? Function(BuildContext, String?)? mailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    name2Controller?.dispose();
    fhatherNameController?.dispose();
    familyController?.dispose();
    phoneController1?.dispose();
    phoneController2?.dispose();
    phoneCustController1?.dispose();
    phoneCustController2?.dispose();
    phoneController3?.dispose();
    mailCustomerController?.dispose();
    mailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
