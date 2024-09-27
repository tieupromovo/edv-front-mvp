// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsPresenceStruct extends BaseStruct {
  ReportsPresenceStruct({
    int? actionId,
    String? date,
    String? invitationType,
    int? countInvitationType,
  })  : _actionId = actionId,
        _date = date,
        _invitationType = invitationType,
        _countInvitationType = countInvitationType;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "invitationType" field.
  String? _invitationType;
  String get invitationType => _invitationType ?? '';
  set invitationType(String? val) => _invitationType = val;

  bool hasInvitationType() => _invitationType != null;

  // "countInvitationType" field.
  int? _countInvitationType;
  int get countInvitationType => _countInvitationType ?? 0;
  set countInvitationType(int? val) => _countInvitationType = val;

  void incrementCountInvitationType(int amount) =>
      countInvitationType = countInvitationType + amount;

  bool hasCountInvitationType() => _countInvitationType != null;

  static ReportsPresenceStruct fromMap(Map<String, dynamic> data) =>
      ReportsPresenceStruct(
        actionId: castToType<int>(data['actionId']),
        date: data['date'] as String?,
        invitationType: data['invitationType'] as String?,
        countInvitationType: castToType<int>(data['countInvitationType']),
      );

  static ReportsPresenceStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportsPresenceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'actionId': _actionId,
        'date': _date,
        'invitationType': _invitationType,
        'countInvitationType': _countInvitationType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'invitationType': serializeParam(
          _invitationType,
          ParamType.String,
        ),
        'countInvitationType': serializeParam(
          _countInvitationType,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReportsPresenceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportsPresenceStruct(
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        invitationType: deserializeParam(
          data['invitationType'],
          ParamType.String,
          false,
        ),
        countInvitationType: deserializeParam(
          data['countInvitationType'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReportsPresenceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportsPresenceStruct &&
        actionId == other.actionId &&
        date == other.date &&
        invitationType == other.invitationType &&
        countInvitationType == other.countInvitationType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([actionId, date, invitationType, countInvitationType]);
}

ReportsPresenceStruct createReportsPresenceStruct({
  int? actionId,
  String? date,
  String? invitationType,
  int? countInvitationType,
}) =>
    ReportsPresenceStruct(
      actionId: actionId,
      date: date,
      invitationType: invitationType,
      countInvitationType: countInvitationType,
    );
