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

  String _PageTitle = 'vazio';
  String get PageTitle => _PageTitle;
  set PageTitle(String value) {
    _PageTitle = value;
  }

  List<dynamic> _sortedActionList = [];
  List<dynamic> get sortedActionList => _sortedActionList;
  set sortedActionList(List<dynamic> value) {
    _sortedActionList = value;
  }

  void addToSortedActionList(dynamic value) {
    sortedActionList.add(value);
  }

  void removeFromSortedActionList(dynamic value) {
    sortedActionList.remove(value);
  }

  void removeAtIndexFromSortedActionList(int index) {
    sortedActionList.removeAt(index);
  }

  void updateSortedActionListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    sortedActionList[index] = updateFn(_sortedActionList[index]);
  }

  void insertAtIndexInSortedActionList(int index, dynamic value) {
    sortedActionList.insert(index, value);
  }
}
