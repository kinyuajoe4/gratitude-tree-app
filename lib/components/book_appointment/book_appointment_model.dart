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
import 'book_appointment_widget.dart' show BookAppointmentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookAppointmentModel extends FlutterFlowModel<BookAppointmentWidget> {
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
  // State field(s) for treename widget.
  final treenameKey = GlobalKey();
  FocusNode? treenameFocusNode;
  TextEditingController? treenameController;
  String? treenameSelectedOption;
  String? Function(BuildContext, String?)? treenameControllerValidator;
  // State field(s) for donor widget.
  FocusNode? donorFocusNode;
  TextEditingController? donorController;
  String? Function(BuildContext, String?)? donorControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - ageInYears] action in Button widget.
  double? yearsCopy;
  // Stores action output result for [Custom Action - timeDifferenceInMonths] action in Button widget.
  int? monthsCopy;
  // Stores action output result for [Custom Action - carbonCalculator] action in Button widget.
  double? carboncalc;
  // State field(s) for fieldname widget.
  FocusNode? fieldnameFocusNode;
  TextEditingController? fieldnameController;
  String? Function(BuildContext, String?)? fieldnameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    personsNameFocusNode?.dispose();
    personsNameController?.dispose();

    treenameFocusNode?.dispose();

    donorFocusNode?.dispose();
    donorController?.dispose();

    fieldnameFocusNode?.dispose();
    fieldnameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
