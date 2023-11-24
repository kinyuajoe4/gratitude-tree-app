import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/maps_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editfielddetails_widget.dart' show EditfielddetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditfielddetailsModel extends FlutterFlowModel<EditfielddetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fieldname widget.
  final fieldnameKey = GlobalKey();
  FocusNode? fieldnameFocusNode;
  TextEditingController? fieldnameController;
  String? fieldnameSelectedOption;
  String? Function(BuildContext, String?)? fieldnameControllerValidator;
  // State field(s) for totalnumoftrees widget.
  FocusNode? totalnumoftreesFocusNode;
  TextEditingController? totalnumoftreesController;
  String? Function(BuildContext, String?)? totalnumoftreesControllerValidator;
  // State field(s) for SIZE widget.
  FocusNode? sizeFocusNode;
  TextEditingController? sizeController;
  String? Function(BuildContext, String?)? sizeControllerValidator;
  // State field(s) for fieldownwer widget.
  FocusNode? fieldownwerFocusNode;
  TextEditingController? fieldownwerController;
  String? Function(BuildContext, String?)? fieldownwerControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    fieldnameFocusNode?.dispose();

    totalnumoftreesFocusNode?.dispose();
    totalnumoftreesController?.dispose();

    sizeFocusNode?.dispose();
    sizeController?.dispose();

    fieldownwerFocusNode?.dispose();
    fieldownwerController?.dispose();

    locationFocusNode?.dispose();
    locationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
