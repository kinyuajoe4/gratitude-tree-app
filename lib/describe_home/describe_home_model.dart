import '/components/custom_house_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'describe_home_widget.dart' show DescribeHomeWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescribeHomeModel extends FlutterFlowModel<DescribeHomeWidget> {
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
  double? sum3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in RadioButton widget.
  double? sum4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;

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
  String? get radioButtonValue4 => radioButtonValueController4?.value;
  String? get radioButtonValue5 => radioButtonValueController5?.value;
}
