import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _oneDan = prefs.getStringList('ff_oneDan') ?? _oneDan;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _button = false;
  bool get button => _button;
  set button(bool _value) {
    _button = _value;
  }

  bool _select1 = false;
  bool get select1 => _select1;
  set select1(bool _value) {
    _select1 = _value;
  }

  bool _select2 = false;
  bool get select2 => _select2;
  set select2(bool _value) {
    _select2 = _value;
  }

  bool _select3 = false;
  bool get select3 => _select3;
  set select3(bool _value) {
    _select3 = _value;
  }

  bool _select4 = false;
  bool get select4 => _select4;
  set select4(bool _value) {
    _select4 = _value;
  }

  bool _select5 = false;
  bool get select5 => _select5;
  set select5(bool _value) {
    _select5 = _value;
  }

  bool _select6 = false;
  bool get select6 => _select6;
  set select6(bool _value) {
    _select6 = _value;
  }

  bool _select7 = false;
  bool get select7 => _select7;
  set select7(bool _value) {
    _select7 = _value;
  }

  bool _selcet8 = false;
  bool get selcet8 => _selcet8;
  set selcet8(bool _value) {
    _selcet8 = _value;
  }

  bool _level1 = false;
  bool get level1 => _level1;
  set level1(bool _value) {
    _level1 = _value;
  }

  bool _level2 = false;
  bool get level2 => _level2;
  set level2(bool _value) {
    _level2 = _value;
  }

  bool _level3 = false;
  bool get level3 => _level3;
  set level3(bool _value) {
    _level3 = _value;
  }

  List<String> _oneDan = [
    '1단의 1',
    '1단의 2',
    '1단의 3',
    '1단의 4',
    '1단의 5',
    '1단의 6',
    '1단의 7',
    '1단의 8',
    '1단의 9'
  ];
  List<String> get oneDan => _oneDan;
  set oneDan(List<String> _value) {
    _oneDan = _value;
    prefs.setStringList('ff_oneDan', _value);
  }

  void addToOneDan(String _value) {
    _oneDan.add(_value);
    prefs.setStringList('ff_oneDan', _oneDan);
  }

  void removeFromOneDan(String _value) {
    _oneDan.remove(_value);
    prefs.setStringList('ff_oneDan', _oneDan);
  }

  void removeAtIndexFromOneDan(int _index) {
    _oneDan.removeAt(_index);
    prefs.setStringList('ff_oneDan', _oneDan);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
