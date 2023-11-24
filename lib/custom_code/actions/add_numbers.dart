// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> addNumbers(
  bool value1,
  double total,
) async {
  // calculate percentage and give result less than 1

  double result;
  if (value1 == true) {
    result = total + 0.1;
  } else {
    result = total - 0.1;
  }
  return result;
}
