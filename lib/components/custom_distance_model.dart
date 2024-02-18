import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'custom_distance_widget.dart' show CustomDistanceWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomDistanceModel extends FlutterFlowModel<CustomDistanceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - divideTwoDoubleNumbers] action in Text widget.
  double? div1;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul1;
  // Stores action output result for [Custom Action - divideTwoDoubleNumbers] action in Text widget.
  double? div2;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Text widget.
  double? sum1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
