// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActionStruct extends BaseStruct {
  ActionStruct({
    int? actionId,
    String? name,
    String? actionType,
    String? startAt,
    String? finishAt,
    String? actionStatus,
  })  : _actionId = actionId,
        _name = name,
        _actionType = actionType,
        _startAt = startAt,
        _finishAt = finishAt,
        _actionStatus = actionStatus;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "actionType" field.
  String? _actionType;
  String get actionType => _actionType ?? '';
  set actionType(String? val) => _actionType = val;

  bool hasActionType() => _actionType != null;

  // "startAt" field.
  String? _startAt;
  String get startAt => _startAt ?? '';
  set startAt(String? val) => _startAt = val;

  bool hasStartAt() => _startAt != null;

  // "finishAt" field.
  String? _finishAt;
  String get finishAt => _finishAt ?? '';
  set finishAt(String? val) => _finishAt = val;

  bool hasFinishAt() => _finishAt != null;

  // "actionStatus" field.
  String? _actionStatus;
  String get actionStatus => _actionStatus ?? '';
  set actionStatus(String? val) => _actionStatus = val;

  bool hasActionStatus() => _actionStatus != null;

  static ActionStruct fromMap(Map<String, dynamic> data) => ActionStruct(
        actionId: castToType<int>(data['actionId']),
        name: data['name'] as String?,
        actionType: data['actionType'] as String?,
        startAt: data['startAt'] as String?,
        finishAt: data['finishAt'] as String?,
        actionStatus: data['actionStatus'] as String?,
      );

  static ActionStruct? maybeFromMap(dynamic data) =>
      data is Map ? ActionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'actionId': _actionId,
        'name': _name,
        'actionType': _actionType,
        'startAt': _startAt,
        'finishAt': _finishAt,
        'actionStatus': _actionStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'actionType': serializeParam(
          _actionType,
          ParamType.String,
        ),
        'startAt': serializeParam(
          _startAt,
          ParamType.String,
        ),
        'finishAt': serializeParam(
          _finishAt,
          ParamType.String,
        ),
        'actionStatus': serializeParam(
          _actionStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActionStruct(
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        actionType: deserializeParam(
          data['actionType'],
          ParamType.String,
          false,
        ),
        startAt: deserializeParam(
          data['startAt'],
          ParamType.String,
          false,
        ),
        finishAt: deserializeParam(
          data['finishAt'],
          ParamType.String,
          false,
        ),
        actionStatus: deserializeParam(
          data['actionStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ActionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActionStruct &&
        actionId == other.actionId &&
        name == other.name &&
        actionType == other.actionType &&
        startAt == other.startAt &&
        finishAt == other.finishAt &&
        actionStatus == other.actionStatus;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([actionId, name, actionType, startAt, finishAt, actionStatus]);
}

ActionStruct createActionStruct({
  int? actionId,
  String? name,
  String? actionType,
  String? startAt,
  String? finishAt,
  String? actionStatus,
}) =>
    ActionStruct(
      actionId: actionId,
      name: name,
      actionType: actionType,
      startAt: startAt,
      finishAt: finishAt,
      actionStatus: actionStatus,
    );
