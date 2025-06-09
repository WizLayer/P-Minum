import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
  }

  double _progress = 0.0;
  double get progress => _progress;
  set progress(double value) {
    _progress = value;
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
  }

  double _dailyGoal = 0.0;
  double get dailyGoal => _dailyGoal;
  set dailyGoal(double value) {
    _dailyGoal = value;
  }
}
