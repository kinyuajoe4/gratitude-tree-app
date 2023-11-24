// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> oxygenProduction(
  double carbonreduction,
) async {
  // custom action to add three numbers
  double carbonSequestration = 0.0;
  double carbonPerTree = 0.0;
  double oxygenproduced = 0.0;

// Calculate carbon sequestration per tree based on diameter and age
  if (carbonreduction >= 0) {
    oxygenproduced = (carbonreduction * 2.67);
  }
  return oxygenproduced;
}
