// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginEdvStruct extends BaseStruct {
  LoginEdvStruct({
    String? accessToken,
    int? expiresIn,
    UserStruct? user,
    TeamStruct? team,
  })  : _accessToken = accessToken,
        _expiresIn = expiresIn,
        _user = user,
        _team = team;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "team" field.
  TeamStruct? _team;
  TeamStruct get team => _team ?? TeamStruct();
  set team(TeamStruct? val) => _team = val;

  void updateTeam(Function(TeamStruct) updateFn) {
    updateFn(_team ??= TeamStruct());
  }

  bool hasTeam() => _team != null;

  static LoginEdvStruct fromMap(Map<String, dynamic> data) => LoginEdvStruct(
        accessToken: data['accessToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        user: UserStruct.maybeFromMap(data['user']),
        team: TeamStruct.maybeFromMap(data['team']),
      );

  static LoginEdvStruct? maybeFromMap(dynamic data) =>
      data is Map ? LoginEdvStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'expiresIn': _expiresIn,
        'user': _user?.toMap(),
        'team': _team?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'team': serializeParam(
          _team,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginEdvStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginEdvStruct(
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        team: deserializeStructParam(
          data['team'],
          ParamType.DataStruct,
          false,
          structBuilder: TeamStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginEdvStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginEdvStruct &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        user == other.user &&
        team == other.team;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, expiresIn, user, team]);
}

LoginEdvStruct createLoginEdvStruct({
  String? accessToken,
  int? expiresIn,
  UserStruct? user,
  TeamStruct? team,
}) =>
    LoginEdvStruct(
      accessToken: accessToken,
      expiresIn: expiresIn,
      user: user ?? UserStruct(),
      team: team ?? TeamStruct(),
    );
