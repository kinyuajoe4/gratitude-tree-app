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

import 'package:numberpicker/numberpicker.dart';

class NumberSelector extends StatefulWidget {
  const NumberSelector({
    Key? key,
    this.width,
    this.height,
    this.currentValue,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? currentValue;

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  late int _currentValue; // Changed to late initialization

  @override
  void initState() {
    super.initState();
    _currentValue = widget.currentValue ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: widget.height,
            width: widget.width,
            child: NumberPicker(
              value: _currentValue,
              minValue: 0,
              maxValue: 1000,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                  // Update the FFAppState with the new value
                  FFAppState().currentNumberPickerValue =
                      (_currentValue * 1100) ~/ 2000;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
