import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _targetAmount = prefs.getDouble('ff_targetAmount') ?? _targetAmount;
    });
    _safeInit(() {
      _currWaterIntake =
          prefs.getDouble('ff_currWaterIntake') ?? _currWaterIntake;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _diabetes = false;
  bool get diabetes => _diabetes;
  set diabetes(bool value) {
    _diabetes = value;
  }

  bool _pregnant = false;
  bool get pregnant => _pregnant;
  set pregnant(bool value) {
    _pregnant = value;
  }

  bool _breastFeeding = false;
  bool get breastFeeding => _breastFeeding;
  set breastFeeding(bool value) {
    _breastFeeding = value;
  }

  double _targetAmount = 0.0;
  double get targetAmount => _targetAmount;
  set targetAmount(double value) {
    _targetAmount = value;
    prefs.setDouble('ff_targetAmount', value);
  }

  String _activity = '';
  String get activity => _activity;
  set activity(String value) {
    _activity = value;
  }

  double _weight = 0.0;
  double get weight => _weight;
  set weight(double value) {
    _weight = value;
  }

  double _currWaterIntake = 0.0;
  double get currWaterIntake => _currWaterIntake;
  set currWaterIntake(double value) {
    _currWaterIntake = value;
    prefs.setDouble('ff_currWaterIntake', value);
  }

  double _dailyGoal = 0.0;
  double get dailyGoal => _dailyGoal;
  set dailyGoal(double value) {
    _dailyGoal = value;
  }

  int _age = 0;
  int get age => _age;
  set age(int value) {
    _age = value;
  }

  String _profile = '';
  String get profile => _profile;
  set profile(String value) {
    _profile = value;
  }

  DateTime? _lastOpen = DateTime.fromMillisecondsSinceEpoch(1750245360000);
  DateTime? get lastOpen => _lastOpen;
  set lastOpen(DateTime? value) {
    _lastOpen = value;
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
