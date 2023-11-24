// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DateTime> newCustomAction(DateTime pastdate) async {
  // subtract  an earlier date  from present date and return age

  DateTime now = DateTime.now();
  Duration difference = now.difference(pastdate);
  return DateTime.fromMillisecondsSinceEpoch(difference.inMilliseconds);
}
