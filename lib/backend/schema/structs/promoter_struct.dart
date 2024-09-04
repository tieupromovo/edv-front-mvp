// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromoterStruct extends BaseStruct {
  PromoterStruct({
    int? promoterId,
    String? name,
    String? email,
    String? phone,
    String? photoPath,
    bool? active,
    String? cpf,
    String? region,
    String? transport,
    String? shirtSize,
    String? profile,
    UserStruct? user,
  })  : _promoterId = promoterId,
        _name = name,
        _email = email,
        _phone = phone,
        _photoPath = photoPath,
        _active = active,
        _cpf = cpf,
        _region = region,
        _transport = transport,
        _shirtSize = shirtSize,
        _profile = profile,
        _user = user;

  // "promoterId" field.
  int? _promoterId;
  int get promoterId => _promoterId ?? 0;
  set promoterId(int? val) => _promoterId = val;

  void incrementPromoterId(int amount) => promoterId = promoterId + amount;

  bool hasPromoterId() => _promoterId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "photoPath" field.
  String? _photoPath;
  String get photoPath => _photoPath ?? '';
  set photoPath(String? val) => _photoPath = val;

  bool hasPhotoPath() => _photoPath != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;

  bool hasActive() => _active != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "transport" field.
  String? _transport;
  String get transport => _transport ?? '';
  set transport(String? val) => _transport = val;

  bool hasTransport() => _transport != null;

  // "shirtSize" field.
  String? _shirtSize;
  String get shirtSize => _shirtSize ?? '';
  set shirtSize(String? val) => _shirtSize = val;

  bool hasShirtSize() => _shirtSize != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  set profile(String? val) => _profile = val;

  bool hasProfile() => _profile != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  static PromoterStruct fromMap(Map<String, dynamic> data) => PromoterStruct(
        promoterId: castToType<int>(data['promoterId']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        photoPath: data['photoPath'] as String?,
        active: data['active'] as bool?,
        cpf: data['cpf'] as String?,
        region: data['region'] as String?,
        transport: data['transport'] as String?,
        shirtSize: data['shirtSize'] as String?,
        profile: data['profile'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
      );

  static PromoterStruct? maybeFromMap(dynamic data) =>
      data is Map ? PromoterStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'promoterId': _promoterId,
        'name': _name,
        'email': _email,
        'phone': _phone,
        'photoPath': _photoPath,
        'active': _active,
        'cpf': _cpf,
        'region': _region,
        'transport': _transport,
        'shirtSize': _shirtSize,
        'profile': _profile,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'promoterId': serializeParam(
          _promoterId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'photoPath': serializeParam(
          _photoPath,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'transport': serializeParam(
          _transport,
          ParamType.String,
        ),
        'shirtSize': serializeParam(
          _shirtSize,
          ParamType.String,
        ),
        'profile': serializeParam(
          _profile,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PromoterStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromoterStruct(
        promoterId: deserializeParam(
          data['promoterId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        photoPath: deserializeParam(
          data['photoPath'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        transport: deserializeParam(
          data['transport'],
          ParamType.String,
          false,
        ),
        shirtSize: deserializeParam(
          data['shirtSize'],
          ParamType.String,
          false,
        ),
        profile: deserializeParam(
          data['profile'],
          ParamType.String,
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
  String toString() => 'PromoterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromoterStruct &&
        promoterId == other.promoterId &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        photoPath == other.photoPath &&
        active == other.active &&
        cpf == other.cpf &&
        region == other.region &&
        transport == other.transport &&
        shirtSize == other.shirtSize &&
        profile == other.profile &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([
        promoterId,
        name,
        email,
        phone,
        photoPath,
        active,
        cpf,
        region,
        transport,
        shirtSize,
        profile,
        user
      ]);
}

PromoterStruct createPromoterStruct({
  int? promoterId,
  String? name,
  String? email,
  String? phone,
  String? photoPath,
  bool? active,
  String? cpf,
  String? region,
  String? transport,
  String? shirtSize,
  String? profile,
  UserStruct? user,
}) =>
    PromoterStruct(
      promoterId: promoterId,
      name: name,
      email: email,
      phone: phone,
      photoPath: photoPath,
      active: active,
      cpf: cpf,
      region: region,
      transport: transport,
      shirtSize: shirtSize,
      profile: profile,
      user: user ?? UserStruct(),
    );
