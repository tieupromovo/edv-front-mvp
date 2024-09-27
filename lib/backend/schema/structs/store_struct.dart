// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreStruct extends BaseStruct {
  StoreStruct({
    int? storeId,
    String? name,
    String? storeType,
    String? cnpj,
    String? ie,
    String? logoPath,
    String? active,
    int? goal,
    String? region,
    List<AddressesStruct>? addresses,
    int? actionId,
  })  : _storeId = storeId,
        _name = name,
        _storeType = storeType,
        _cnpj = cnpj,
        _ie = ie,
        _logoPath = logoPath,
        _active = active,
        _goal = goal,
        _region = region,
        _addresses = addresses,
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

  // "storeType" field.
  String? _storeType;
  String get storeType => _storeType ?? '';
  set storeType(String? val) => _storeType = val;

  bool hasStoreType() => _storeType != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "ie" field.
  String? _ie;
  String get ie => _ie ?? '';
  set ie(String? val) => _ie = val;

  bool hasIe() => _ie != null;

  // "logoPath" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  set logoPath(String? val) => _logoPath = val;

  bool hasLogoPath() => _logoPath != null;

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

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "addresses" field.
  List<AddressesStruct>? _addresses;
  List<AddressesStruct> get addresses => _addresses ?? const [];
  set addresses(List<AddressesStruct>? val) => _addresses = val;

  void updateAddresses(Function(List<AddressesStruct>) updateFn) {
    updateFn(_addresses ??= []);
  }

  bool hasAddresses() => _addresses != null;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  static StoreStruct fromMap(Map<String, dynamic> data) => StoreStruct(
        storeId: castToType<int>(data['storeId']),
        name: data['name'] as String?,
        storeType: data['storeType'] as String?,
        cnpj: data['cnpj'] as String?,
        ie: data['ie'] as String?,
        logoPath: data['logoPath'] as String?,
        active: data['active'] as String?,
        goal: castToType<int>(data['goal']),
        region: data['region'] as String?,
        addresses: getStructList(
          data['addresses'],
          AddressesStruct.fromMap,
        ),
        actionId: castToType<int>(data['actionId']),
      );

  static StoreStruct? maybeFromMap(dynamic data) =>
      data is Map ? StoreStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'storeId': _storeId,
        'name': _name,
        'storeType': _storeType,
        'cnpj': _cnpj,
        'ie': _ie,
        'logoPath': _logoPath,
        'active': _active,
        'goal': _goal,
        'region': _region,
        'addresses': _addresses?.map((e) => e.toMap()).toList(),
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
        'storeType': serializeParam(
          _storeType,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'ie': serializeParam(
          _ie,
          ParamType.String,
        ),
        'logoPath': serializeParam(
          _logoPath,
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
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'addresses': serializeParam(
          _addresses,
          ParamType.DataStruct,
          isList: true,
        ),
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
      }.withoutNulls;

  static StoreStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreStruct(
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
        storeType: deserializeParam(
          data['storeType'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        ie: deserializeParam(
          data['ie'],
          ParamType.String,
          false,
        ),
        logoPath: deserializeParam(
          data['logoPath'],
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
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        addresses: deserializeStructParam<AddressesStruct>(
          data['addresses'],
          ParamType.DataStruct,
          true,
          structBuilder: AddressesStruct.fromSerializableMap,
        ),
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StoreStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StoreStruct &&
        storeId == other.storeId &&
        name == other.name &&
        storeType == other.storeType &&
        cnpj == other.cnpj &&
        ie == other.ie &&
        logoPath == other.logoPath &&
        active == other.active &&
        goal == other.goal &&
        region == other.region &&
        listEquality.equals(addresses, other.addresses) &&
        actionId == other.actionId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        storeId,
        name,
        storeType,
        cnpj,
        ie,
        logoPath,
        active,
        goal,
        region,
        addresses,
        actionId
      ]);
}

StoreStruct createStoreStruct({
  int? storeId,
  String? name,
  String? storeType,
  String? cnpj,
  String? ie,
  String? logoPath,
  String? active,
  int? goal,
  String? region,
  int? actionId,
}) =>
    StoreStruct(
      storeId: storeId,
      name: name,
      storeType: storeType,
      cnpj: cnpj,
      ie: ie,
      logoPath: logoPath,
      active: active,
      goal: goal,
      region: region,
      actionId: actionId,
    );
