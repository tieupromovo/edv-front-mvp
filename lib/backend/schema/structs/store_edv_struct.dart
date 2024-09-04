// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreEdvStruct extends BaseStruct {
  StoreEdvStruct({
    int? storeId,
    String? name,
    String? active,
    int? goal,
    String? city,
    int? actionId,
  })  : _storeId = storeId,
        _name = name,
        _active = active,
        _goal = goal,
        _city = city,
        _actionId = actionId;

  // "storeId" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "active" field.
  String? _active;
  String get active => _active ?? '';
  set active(String? val) => _active = val;

  bool hasActive() => _active != null;

  // "goal" field.
  int? _goal;
  int get goal => _goal ?? 0;
  set goal(int? val) => _goal = val;

  void incrementGoal(int amount) => goal = goal + amount;

  bool hasGoal() => _goal != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  static StoreEdvStruct fromMap(Map<String, dynamic> data) => StoreEdvStruct(
        storeId: castToType<int>(data['storeId']),
        name: data['name'] as String?,
        active: data['active'] as String?,
        goal: castToType<int>(data['goal']),
        city: data['city'] as String?,
        actionId: castToType<int>(data['actionId']),
      );

  static StoreEdvStruct? maybeFromMap(dynamic data) =>
      data is Map ? StoreEdvStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'storeId': _storeId,
        'name': _name,
        'active': _active,
        'goal': _goal,
        'city': _city,
        'actionId': _actionId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'storeId': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.String,
        ),
        'goal': serializeParam(
          _goal,
          ParamType.int,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
      }.withoutNulls;

  static StoreEdvStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreEdvStruct(
        storeId: deserializeParam(
          data['storeId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.String,
          false,
        ),
        goal: deserializeParam(
          data['goal'],
          ParamType.int,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StoreEdvStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreEdvStruct &&
        storeId == other.storeId &&
        name == other.name &&
        active == other.active &&
        goal == other.goal &&
        city == other.city &&
        actionId == other.actionId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([storeId, name, active, goal, city, actionId]);
}

StoreEdvStruct createStoreEdvStruct({
  int? storeId,
  String? name,
  String? active,
  int? goal,
  String? city,
  int? actionId,
}) =>
    StoreEdvStruct(
      storeId: storeId,
      name: name,
      active: active,
      goal: goal,
      city: city,
      actionId: actionId,
    );
