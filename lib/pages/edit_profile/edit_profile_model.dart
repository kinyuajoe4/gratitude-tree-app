import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for yourAge widget.
  FocusNode? yourAgeFocusNode;
  TextEditingController? yourAgeController;
  String? Function(BuildContext, String?)? yourAgeControllerValidator;
  // State field(s) for speciality widget.
  FocusNode? specialityFocusNode1;
  TextEditingController? specialityController1;
  String? Function(BuildContext, String?)? specialityController1Validator;
  // State field(s) for speciality widget.
  FocusNode? specialityFocusNode2;
  TextEditingController? specialityController2;
  String? Function(BuildContext, String?)? specialityController2Validator;
  // State field(s) for Yourschedule widget.
  FocusNode? yourscheduleFocusNode;
  TextEditingController? yourscheduleController;
  String? Function(BuildContext, String?)? yourscheduleControllerValidator;
  // State field(s) for yourAilments widget.
  FocusNode? yourAilmentsFocusNode;
  TextEditingController? yourAilmentsController;
  String? Function(BuildContext, String?)? yourAilmentsControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    yourAgeFocusNode?.dispose();
    yourAgeController?.dispose();

    specialityFocusNode1?.dispose();
    specialityController1?.dispose();

    specialityFocusNode2?.dispose();
    specialityController2?.dispose();

    yourscheduleFocusNode?.dispose();
    yourscheduleController?.dispose();

    yourAilmentsFocusNode?.dispose();
    yourAilmentsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
