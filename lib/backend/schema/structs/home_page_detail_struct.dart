// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomePageDetailStruct extends BaseStruct {
  HomePageDetailStruct({
    int? actionId,
    String? actionName,
    String? startAt,
    String? finishAt,
    int? countStores,
    int? countTeams,
    int? presence,
    int? conversion,
    int? countSell,
    List<String>? dateRange,
    int? sumGoals,
  })  : _actionId = actionId,
        _actionName = actionName,
        _startAt = startAt,
        _finishAt = finishAt,
        _countStores = countStores,
        _countTeams = countTeams,
        _presence = presence,
        _conversion = conversion,
        _countSell = countSell,
        _dateRange = dateRange,
        _sumGoals = sumGoals;

  // "action_id" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "action_name" field.
  String? _actionName;
  String get actionName => _actionName ?? '';
  set actionName(String? val) => _actionName = val;

  bool hasActionName() => _actionName != null;

  // "start_at" field.
  String? _startAt;
  String get startAt => _startAt ?? '';
  set startAt(String? val) => _startAt = val;

  bool hasStartAt() => _startAt != null;

  // "finish_at" field.
  String? _finishAt;
  String get finishAt => _finishAt ?? '';
  set finishAt(String? val) => _finishAt = val;

  bool hasFinishAt() => _finishAt != null;

  // "count_stores" field.
  int? _countStores;
  int get countStores => _countStores ?? 0;
  set countStores(int? val) => _countStores = val;

  void incrementCountStores(int amount) => countStores = countStores + amount;

  bool hasCountStores() => _countStores != null;

  // "count_teams" field.
  int? _countTeams;
  int get countTeams => _countTeams ?? 0;
  set countTeams(int? val) => _countTeams = val;

  void incrementCountTeams(int amount) => countTeams = countTeams + amount;

  bool hasCountTeams() => _countTeams != null;

  // "presence" field.
  int? _presence;
  int get presence => _presence ?? 0;
  set presence(int? val) => _presence = val;

  void incrementPresence(int amount) => presence = presence + amount;

  bool hasPresence() => _presence != null;

  // "conversion" field.
  int? _conversion;
  int get conversion => _conversion ?? 0;
  set conversion(int? val) => _conversion = val;

  void incrementConversion(int amount) => conversion = conversion + amount;

  bool hasConversion() => _conversion != null;

  // "count_sell" field.
  int? _countSell;
  int get countSell => _countSell ?? 0;
  set countSell(int? val) => _countSell = val;

  void incrementCountSell(int amount) => countSell = countSell + amount;

  bool hasCountSell() => _countSell != null;

  // "dateRange" field.
  List<String>? _dateRange;
  List<String> get dateRange => _dateRange ?? const [];
  set dateRange(List<String>? val) => _dateRange = val;

  void updateDateRange(Function(List<String>) updateFn) {
    updateFn(_dateRange ??= []);
  }

  bool hasDateRange() => _dateRange != null;

  // "sum_goals" field.
  int? _sumGoals;
  int get sumGoals => _sumGoals ?? 0;
  set sumGoals(int? val) => _sumGoals = val;

  void incrementSumGoals(int amount) => sumGoals = sumGoals + amount;

  bool hasSumGoals() => _sumGoals != null;

  static HomePageDetailStruct fromMap(Map<String, dynamic> data) =>
      HomePageDetailStruct(
        actionId: castToType<int>(data['action_id']),
        actionName: data['action_name'] as String?,
        startAt: data['start_at'] as String?,
        finishAt: data['finish_at'] as String?,
        countStores: castToType<int>(data['count_stores']),
        countTeams: castToType<int>(data['count_teams']),
        presence: castToType<int>(data['presence']),
        conversion: castToType<int>(data['conversion']),
        countSell: castToType<int>(data['count_sell']),
        dateRange: getDataList(data['dateRange']),
        sumGoals: castToType<int>(data['sum_goals']),
      );

  static HomePageDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? HomePageDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'action_id': _actionId,
        'action_name': _actionName,
        'start_at': _startAt,
        'finish_at': _finishAt,
        'count_stores': _countStores,
        'count_teams': _countTeams,
        'presence': _presence,
        'conversion': _conversion,
        'count_sell': _countSell,
        'dateRange': _dateRange,
        'sum_goals': _sumGoals,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'action_id': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'action_name': serializeParam(
          _actionName,
          ParamType.String,
        ),
        'start_at': serializeParam(
          _startAt,
          ParamType.String,
        ),
        'finish_at': serializeParam(
          _finishAt,
          ParamType.String,
        ),
        'count_stores': serializeParam(
          _countStores,
          ParamType.int,
        ),
        'count_teams': serializeParam(
          _countTeams,
          ParamType.int,
        ),
        'presence': serializeParam(
          _presence,
          ParamType.int,
        ),
        'conversion': serializeParam(
          _conversion,
          ParamType.int,
        ),
        'count_sell': serializeParam(
          _countSell,
          ParamType.int,
        ),
        'dateRange': serializeParam(
          _dateRange,
          ParamType.String,
          isList: true,
        ),
        'sum_goals': serializeParam(
          _sumGoals,
          ParamType.int,
        ),
      }.withoutNulls;

  static HomePageDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomePageDetailStruct(
        actionId: deserializeParam(
          data['action_id'],
          ParamType.int,
          false,
        ),
        actionName: deserializeParam(
          data['action_name'],
          ParamType.String,
          false,
        ),
        startAt: deserializeParam(
          data['start_at'],
          ParamType.String,
          false,
        ),
        finishAt: deserializeParam(
          data['finish_at'],
          ParamType.String,
          false,
        ),
        countStores: deserializeParam(
          data['count_stores'],
          ParamType.int,
          false,
        ),
        countTeams: deserializeParam(
          data['count_teams'],
          ParamType.int,
          false,
        ),
        presence: deserializeParam(
          data['presence'],
          ParamType.int,
          false,
        ),
        conversion: deserializeParam(
          data['conversion'],
          ParamType.int,
          false,
        ),
        countSell: deserializeParam(
          data['count_sell'],
          ParamType.int,
          false,
        ),
        dateRange: deserializeParam<String>(
          data['dateRange'],
          ParamType.String,
          true,
        ),
        sumGoals: deserializeParam(
          data['sum_goals'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HomePageDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HomePageDetailStruct &&
        actionId == other.actionId &&
        actionName == other.actionName &&
        startAt == other.startAt &&
        finishAt == other.finishAt &&
        countStores == other.countStores &&
        countTeams == other.countTeams &&
        presence == other.presence &&
        conversion == other.conversion &&
        countSell == other.countSell &&
        listEquality.equals(dateRange, other.dateRange) &&
        sumGoals == other.sumGoals;
  }

  @override
  int get hashCode => const ListEquality().hash([
        actionId,
        actionName,
        startAt,
        finishAt,
        countStores,
        countTeams,
        presence,
        conversion,
        countSell,
        dateRange,
        sumGoals
      ]);
}

HomePageDetailStruct createHomePageDetailStruct({
  int? actionId,
  String? actionName,
  String? startAt,
  String? finishAt,
  int? countStores,
  int? countTeams,
  int? presence,
  int? conversion,
  int? countSell,
  int? sumGoals,
}) =>
    HomePageDetailStruct(
      actionId: actionId,
      actionName: actionName,
      startAt: startAt,
      finishAt: finishAt,
      countStores: countStores,
      countTeams: countTeams,
      presence: presence,
      conversion: conversion,
      countSell: countSell,
      sumGoals: sumGoals,
    );
