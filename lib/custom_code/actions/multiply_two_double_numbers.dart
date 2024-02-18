// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double?> multiplyTwoDoubleNumbers(
  double? value1,
  double? value2,
) async {
  // custom action to multiply Two Double Numbers
  if (value1 == null || value2 == null) {
    return null;
  }
  return value1 * value2;
}
