import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'book_appointment_copy_widget.dart' show BookAppointmentCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookAppointmentCopyModel
    extends FlutterFlowModel<BookAppointmentCopyWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for personsName widget.
  FocusNode? personsNameFocusNode;
  TextEditingController? personsNameController;
  String? Function(BuildContext, String?)? personsNameControllerValidator;
  // State field(s) for problemDescription widget.
  final problemDescriptionKey1 = GlobalKey();
  FocusNode? problemDescriptionFocusNode1;
  TextEditingController? problemDescriptionController1;
  String? problemDescriptionSelectedOption1;
  String? Function(BuildContext, String?)?
      problemDescriptionController1Validator;
  // State field(s) for problemDescription widget.
  FocusNode? problemDescriptionFocusNode2;
  TextEditingController? problemDescriptionController2;
  String? Function(BuildContext, String?)?
      problemDescriptionController2Validator;
  // State field(s) for Fieldname widget.
  FocusNode? fieldnameFocusNode;
  TextEditingController? fieldnameController;
  String? Function(BuildContext, String?)? fieldnameControllerValidator;
  // State field(s) for problemDescription widget.
  FocusNode? problemDescriptionFocusNode3;
  TextEditingController? problemDescriptionController3;
  String? Function(BuildContext, String?)?
      problemDescriptionController3Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - ageInYears] action in Button widget.
  double? yearsCopy;
  // Stores action output result for [Custom Action - timeDifferenceInMonths] action in Button widget.
  int? monthsCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    personsNameFocusNode?.dispose();
    personsNameController?.dispose();

    problemDescriptionFocusNode1?.dispose();

    problemDescriptionFocusNode2?.dispose();
    problemDescriptionController2?.dispose();

    fieldnameFocusNode?.dispose();
    fieldnameController?.dispose();

    problemDescriptionFocusNode3?.dispose();
    problemDescriptionController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
