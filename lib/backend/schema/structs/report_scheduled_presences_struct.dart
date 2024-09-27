// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportScheduledPresencesStruct extends BaseStruct {
  ReportScheduledPresencesStruct({
    int? actionId,
    int? storeId,
    String? date,
    int? countSchedules,
    int? countCheckins,
  })  : _actionId = actionId,
        _storeId = storeId,
        _date = date,
        _countSchedules = countSchedules,
        _countCheckins = countCheckins;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "storeId" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "countSchedules" field.
  int? _countSchedules;
  int get countSchedules => _countSchedules ?? 0;
  set countSchedules(int? val) => _countSchedules = val;

  void incrementCountSchedules(int amount) =>
      countSchedules = countSchedules + amount;

  bool hasCountSchedules() => _countSchedules != null;

  // "countCheckins" field.
  int? _countCheckins;
  int get countCheckins => _countCheckins ?? 0;
  set countCheckins(int? val) => _countCheckins = val;

  void incrementCountCheckins(int amount) =>
      countCheckins = countCheckins + amount;

  bool hasCountCheckins() => _countCheckins != null;

  static ReportScheduledPresencesStruct fromMap(Map<String, dynamic> data) =>
      ReportScheduledPresencesStruct(
        actionId: castToType<int>(data['actionId']),
        storeId: castToType<int>(data['storeId']),
        date: data['date'] as String?,
        countSchedules: castToType<int>(data['countSchedules']),
        countCheckins: castToType<int>(data['countCheckins']),
      );

  static ReportScheduledPresencesStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ReportScheduledPresencesStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'actionId': _actionId,
        'storeId': _storeId,
        'date': _date,
        'countSchedules': _countSchedules,
        'countCheckins': _countCheckins,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'storeId': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'countSchedules': serializeParam(
          _countSchedules,
          ParamType.int,
        ),
        'countCheckins': serializeParam(
          _countCheckins,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReportScheduledPresencesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportScheduledPresencesStruct(
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
        storeId: deserializeParam(
          data['storeId'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        countSchedules: deserializeParam(
          data['countSchedules'],
          ParamType.int,
          false,
        ),
        countCheckins: deserializeParam(
          data['countCheckins'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReportScheduledPresencesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportScheduledPresencesStruct &&
        actionId == other.actionId &&
        storeId == other.storeId &&
        date == other.date &&
        countSchedules == other.countSchedules &&
        countCheckins == other.countCheckins;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([actionId, storeId, date, countSchedules, countCheckins]);
}

ReportScheduledPresencesStruct createReportScheduledPresencesStruct({
  int? actionId,
  int? storeId,
  String? date,
  int? countSchedules,
  int? countCheckins,
}) =>
    ReportScheduledPresencesStruct(
      actionId: actionId,
      storeId: storeId,
      date: date,
      countSchedules: countSchedules,
      countCheckins: countCheckins,
    );
