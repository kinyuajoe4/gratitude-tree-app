// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> carbonCalculator(
  double diameterofTree,
  double ageofTrees,
  double numberofTrees,
) async {
  // custom action to add three numbers
  double carbonSequestration = 0.0;
  double carbonPerTree = 0.0;

// Calculate carbon sequestration per tree based on diameter and age
  if (diameterofTree > 0 && ageofTrees > 0) {
    carbonPerTree = ((ageofTrees * diameterofTree * 0.5) * numberofTrees) / 100;
  }
  return carbonPerTree;
}
