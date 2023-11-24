// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:age_calculator/age_calculator.dart';

Future<int?> timeDifferenceInMonths(DateTime? datePicked) async {
  if (datePicked == null) {
    return null; // Handle null case
  }

  DateTime now = DateTime.now();
  int ageYears = now.year - datePicked.year;
  int ageMonths = now.month - datePicked.month;

  if (now.day < datePicked.day) {
    ageMonths--;
  }

  ageMonths += ageYears * 12;

  return ageMonths;
}
// Se
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
