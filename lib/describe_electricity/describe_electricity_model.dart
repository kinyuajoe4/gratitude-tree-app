import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'describe_electricity_widget.dart' show DescribeElectricityWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescribeElectricityModel
    extends FlutterFlowModel<DescribeElectricityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in RadioButton widget.
  double? sum1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in RadioButton widget.
  double? sum2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in RadioButton widget.
  double? sum22;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul01;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul02;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul03;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul04;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Text widget.
  double? mul05;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Button widget.
  double? mul11;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Button widget.
  double? mul22;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Button widget.
  double? mul33;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Button widget.
  double? mul44;
  // Stores action output result for [Custom Action - multiplyTwoDoubleNumbers] action in Button widget.
  double? mul55;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
