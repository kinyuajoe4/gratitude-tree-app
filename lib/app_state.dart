import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _currentNumberPickerValue = prefs.getInt('ff_currentNumberPickerValue') ??
          _currentNumberPickerValue;
    });
    _safeInit(() {
      _currentNumberPickerValue2 =
          prefs.getInt('ff_currentNumberPickerValue2') ??
              _currentNumberPickerValue2;
    });
    _safeInit(() {
      _currentNumberPickerValue3 =
          prefs.getInt('ff_currentNumberPickerValue3') ??
              _currentNumberPickerValue3;
    });
    _safeInit(() {
      _currentPageValue =
          prefs.getDouble('ff_currentPageValue') ?? _currentPageValue;
    });
    _safeInit(() {
      _country = prefs.getString('ff_country') ?? _country;
    });
    _safeInit(() {
      _avrageCountryfootprint = prefs.getDouble('ff_avrageCountryfootprint') ??
          _avrageCountryfootprint;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _currentNumberPickerValue = 0;
  int get currentNumberPickerValue => _currentNumberPickerValue;
  set currentNumberPickerValue(int _value) {
    _currentNumberPickerValue = _value;
    prefs.setInt('ff_currentNumberPickerValue', _value);
  }

  int _currentNumberPickerValue2 = 0;
  int get currentNumberPickerValue2 => _currentNumberPickerValue2;
  set currentNumberPickerValue2(int _value) {
    _currentNumberPickerValue2 = _value;
    prefs.setInt('ff_currentNumberPickerValue2', _value);
  }

  int _currentNumberPickerValue3 = 0;
  int get currentNumberPickerValue3 => _currentNumberPickerValue3;
  set currentNumberPickerValue3(int _value) {
    _currentNumberPickerValue3 = _value;
    prefs.setInt('ff_currentNumberPickerValue3', _value);
  }

  double _currentPageValue = 0.0;
  double get currentPageValue => _currentPageValue;
  set currentPageValue(double _value) {
    _currentPageValue = _value;
    prefs.setDouble('ff_currentPageValue', _value);
  }

  String _country = '';
  String get country => _country;
  set country(String _value) {
    _country = _value;
    prefs.setString('ff_country', _value);
  }

  double _avrageCountryfootprint = 0.0;
  double get avrageCountryfootprint => _avrageCountryfootprint;
  set avrageCountryfootprint(double _value) {
    _avrageCountryfootprint = _value;
    prefs.setDouble('ff_avrageCountryfootprint', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
