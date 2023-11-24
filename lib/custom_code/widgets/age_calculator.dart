// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:age_calculator/age_calculator.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);
  final double? width;
  final double? height;
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  final TextEditingController _dobController = TextEditingController();
  String _age = '';
  @override
  void initState() {
    super.initState();
    _age = '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _dobController,
              decoration: const InputDecoration(
                labelText: 'Date of Birth',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _age = calculateAge(_dobController.text);
              });
            },
            child: const Text('Calculate Age'),
          ),
          Text(_age),
        ],
      ),
    );
  }

  String calculateAge(String dob) {
    if (dob.isEmpty) {
      return '';
    }
    DateTime dobDate = DateTime.parse(dob);
    DateTime now = DateTime.now();
    int age = now.year - dobDate.year;
    if (now.month < dobDate.month) {
      age--;
    } else if (now.month == dobDate.month && now.day < dobDate.day) {
      age--;
    }
    return age.toString();
  }
}
