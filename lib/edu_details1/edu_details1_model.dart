import '/auth/firebase_auth/auth_util.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EduDetails1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for schoolName widget.
  TextEditingController? schoolNameController;
  String? Function(BuildContext, String?)? schoolNameControllerValidator;
  // State field(s) for Board widget.
  String? boardValue;
  FormFieldController<String>? boardValueController;
  // State field(s) for regNum widget.
  TextEditingController? regNumController;
  String? Function(BuildContext, String?)? regNumControllerValidator;
  // State field(s) for marksScored widget.
  TextEditingController? marksScoredController;
  String? Function(BuildContext, String?)? marksScoredControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for cType widget.
  String? cTypeValue;
  FormFieldController<String>? cTypeValueController;
  // State field(s) for Name12 widget.
  TextEditingController? name12Controller;
  String? Function(BuildContext, String?)? name12ControllerValidator;
  // State field(s) for Board12 widget.
  String? board12Value;
  FormFieldController<String>? board12ValueController;
  // State field(s) for regNum12 widget.
  TextEditingController? regNum12Controller;
  String? Function(BuildContext, String?)? regNum12ControllerValidator;
  // State field(s) for marksScored12 widget.
  TextEditingController? marksScored12Controller;
  String? Function(BuildContext, String?)? marksScored12ControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    schoolNameController?.dispose();
    regNumController?.dispose();
    marksScoredController?.dispose();
    name12Controller?.dispose();
    regNum12Controller?.dispose();
    marksScored12Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
