// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboargingTeamStruct extends BaseStruct {
  OnboargingTeamStruct({
    int? onboardingTeamId,
    String? name,
    String? profile,
    String? checkinAt,
    String? checkinOut,
    int? registredTeamId,
    int? teamId,
  })  : _onboardingTeamId = onboardingTeamId,
        _name = name,
        _profile = profile,
        _checkinAt = checkinAt,
        _checkinOut = checkinOut,
        _registredTeamId = registredTeamId,
        _teamId = teamId;

  // "onboardingTeamId" field.
  int? _onboardingTeamId;
  int get onboardingTeamId => _onboardingTeamId ?? 0;
  set onboardingTeamId(int? val) => _onboardingTeamId = val;

  void incrementOnboardingTeamId(int amount) =>
      onboardingTeamId = onboardingTeamId + amount;

  bool hasOnboardingTeamId() => _onboardingTeamId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  set profile(String? val) => _profile = val;

  bool hasProfile() => _profile != null;

  // "checkin_at" field.
  String? _checkinAt;
  String get checkinAt => _checkinAt ?? '';
  set checkinAt(String? val) => _checkinAt = val;

  bool hasCheckinAt() => _checkinAt != null;

  // "checkin_out" field.
  String? _checkinOut;
  String get checkinOut => _checkinOut ?? '';
  set checkinOut(String? val) => _checkinOut = val;

  bool hasCheckinOut() => _checkinOut != null;

  // "registredTeam_id" field.
  int? _registredTeamId;
  int get registredTeamId => _registredTeamId ?? 0;
  set registredTeamId(int? val) => _registredTeamId = val;

  void incrementRegistredTeamId(int amount) =>
      registredTeamId = registredTeamId + amount;

  bool hasRegistredTeamId() => _registredTeamId != null;

  // "team_id" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;

  void incrementTeamId(int amount) => teamId = teamId + amount;

  bool hasTeamId() => _teamId != null;

  static OnboargingTeamStruct fromMap(Map<String, dynamic> data) =>
      OnboargingTeamStruct(
        onboardingTeamId: castToType<int>(data['onboardingTeamId']),
        name: data['name'] as String?,
        profile: data['profile'] as String?,
        checkinAt: data['checkin_at'] as String?,
        checkinOut: data['checkin_out'] as String?,
        registredTeamId: castToType<int>(data['registredTeam_id']),
        teamId: castToType<int>(data['team_id']),
      );

  static OnboargingTeamStruct? maybeFromMap(dynamic data) => data is Map
      ? OnboargingTeamStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'onboardingTeamId': _onboardingTeamId,
        'name': _name,
        'profile': _profile,
        'checkin_at': _checkinAt,
        'checkin_out': _checkinOut,
        'registredTeam_id': _registredTeamId,
        'team_id': _teamId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'onboardingTeamId': serializeParam(
          _onboardingTeamId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'profile': serializeParam(
          _profile,
          ParamType.String,
        ),
        'checkin_at': serializeParam(
          _checkinAt,
          ParamType.String,
        ),
        'checkin_out': serializeParam(
          _checkinOut,
          ParamType.String,
        ),
        'registredTeam_id': serializeParam(
          _registredTeamId,
          ParamType.int,
        ),
        'team_id': serializeParam(
          _teamId,
          ParamType.int,
        ),
      }.withoutNulls;

  static OnboargingTeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnboargingTeamStruct(
        onboardingTeamId: deserializeParam(
          data['onboardingTeamId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        profile: deserializeParam(
          data['profile'],
          ParamType.String,
          false,
        ),
        checkinAt: deserializeParam(
          data['checkin_at'],
          ParamType.String,
          false,
        ),
        checkinOut: deserializeParam(
          data['checkin_out'],
          ParamType.String,
          false,
        ),
        registredTeamId: deserializeParam(
          data['registredTeam_id'],
          ParamType.int,
          false,
        ),
        teamId: deserializeParam(
          data['team_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OnboargingTeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnboargingTeamStruct &&
        onboardingTeamId == other.onboardingTeamId &&
        name == other.name &&
        profile == other.profile &&
        checkinAt == other.checkinAt &&
        checkinOut == other.checkinOut &&
        registredTeamId == other.registredTeamId &&
        teamId == other.teamId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        onboardingTeamId,
        name,
        profile,
        checkinAt,
        checkinOut,
        registredTeamId,
        teamId
      ]);
}

OnboargingTeamStruct createOnboargingTeamStruct({
  int? onboardingTeamId,
  String? name,
  String? profile,
  String? checkinAt,
  String? checkinOut,
  int? registredTeamId,
  int? teamId,
}) =>
    OnboargingTeamStruct(
      onboardingTeamId: onboardingTeamId,
      name: name,
      profile: profile,
      checkinAt: checkinAt,
      checkinOut: checkinOut,
      registredTeamId: registredTeamId,
      teamId: teamId,
    );
