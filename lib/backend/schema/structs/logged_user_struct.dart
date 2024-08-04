// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoggedUserStruct extends BaseStruct {
  LoggedUserStruct({
    String? accessToken,
    int? expiresIn,
    UserStruct? user,
  })  : _accessToken = accessToken,
        _expiresIn = expiresIn,
        _user = user;

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

  static LoggedUserStruct fromMap(Map<String, dynamic> data) =>
      LoggedUserStruct(
        accessToken: data['accessToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        user: UserStruct.maybeFromMap(data['user']),
      );

  static LoggedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? LoggedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'expiresIn': _expiresIn,
        'user': _user?.toMap(),
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
      }.withoutNulls;

  static LoggedUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoggedUserStruct(
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
      );

  @override
  String toString() => 'LoggedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoggedUserStruct &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([accessToken, expiresIn, user]);
}

LoggedUserStruct createLoggedUserStruct({
  String? accessToken,
  int? expiresIn,
  UserStruct? user,
}) =>
    LoggedUserStruct(
      accessToken: accessToken,
      expiresIn: expiresIn,
      user: user ?? UserStruct(),
    );
