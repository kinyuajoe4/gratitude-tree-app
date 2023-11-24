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

Future<double?> ageInYears(DateTime? datePicked) async {
  if (datePicked == null) {
    return null; // Handle null case
  }

  DateTime now = DateTime.now();
  int ageYears = now.year - datePicked.year;
  int ageMonths = now.month - datePicked.month;
  int ageDays = now.day - datePicked.day;

  // Adjust age if birth month and day are later in the year
  if (ageMonths < 0 || (ageMonths == 0 && ageDays < 0)) {
    ageYears--;
  }

  double ageDecimal = ageYears + (ageMonths / 12) + (ageDays / 365);

  return ageDecimal;
}
