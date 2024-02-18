import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'edit_tree_details_widget.dart' show EditTreeDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditTreeDetailsModel extends FlutterFlowModel<EditTreeDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for problemDescription widget.
  FocusNode? problemDescriptionFocusNode;
  TextEditingController? problemDescriptionController;
  String? Function(BuildContext, String?)?
      problemDescriptionControllerValidator;
  // State field(s) for Donor widget.
  FocusNode? donorFocusNode;
  TextEditingController? donorController;
  String? Function(BuildContext, String?)? donorControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - addTenAction] action in Button widget.
  double? toktok;
  // Stores action output result for [Custom Action - timeDifferenceInMonths] action in Button widget.
  int? monthsCopyCopyCopy;
  // Stores action output result for [Custom Action - ageInYears] action in Button widget.
  double? ageeinYearsCopyCopy;
  // Stores action output result for [Custom Action - carbonCalculator] action in Button widget.
  double? carboncalcCopyCopy;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    problemDescriptionFocusNode?.dispose();
    problemDescriptionController?.dispose();

    donorFocusNode?.dispose();
    donorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
