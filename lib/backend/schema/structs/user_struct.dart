// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? userId,
    String? username,
    String? roles,
  })  : _userId = userId,
        _username = username,
        _roles = roles;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "roles" field.
  String? _roles;
  String get roles => _roles ?? '';
  set roles(String? val) => _roles = val;

  bool hasRoles() => _roles != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userId: castToType<int>(data['userId']),
        username: data['username'] as String?,
        roles: data['roles'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'username': _username,
        'roles': _roles,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'roles': serializeParam(
          _roles,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        roles: deserializeParam(
          data['roles'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userId == other.userId &&
        username == other.username &&
        roles == other.roles;
  }

  @override
  int get hashCode => const ListEquality().hash([userId, username, roles]);
}

UserStruct createUserStruct({
  int? userId,
  String? username,
  String? roles,
}) =>
    UserStruct(
      userId: userId,
      username: username,
      roles: roles,
    );
