// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamStruct extends BaseStruct {
  TeamStruct({
    int? teamId,
    String? name,
    String? phone,
    String? profile,
    ActionStruct? action,
    StoreStruct? store,
    PromoterStruct? promoter,
  })  : _teamId = teamId,
        _name = name,
        _phone = phone,
        _profile = profile,
        _action = action,
        _store = store,
        _promoter = promoter;

  // "teamId" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;

  void incrementTeamId(int amount) => teamId = teamId + amount;

  bool hasTeamId() => _teamId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  set profile(String? val) => _profile = val;

  bool hasProfile() => _profile != null;

  // "action" field.
  ActionStruct? _action;
  ActionStruct get action => _action ?? ActionStruct();
  set action(ActionStruct? val) => _action = val;

  void updateAction(Function(ActionStruct) updateFn) {
    updateFn(_action ??= ActionStruct());
  }

  bool hasAction() => _action != null;

  // "store" field.
  StoreStruct? _store;
  StoreStruct get store => _store ?? StoreStruct();
  set store(StoreStruct? val) => _store = val;

  void updateStore(Function(StoreStruct) updateFn) {
    updateFn(_store ??= StoreStruct());
  }

  bool hasStore() => _store != null;

  // "promoter" field.
  PromoterStruct? _promoter;
  PromoterStruct get promoter => _promoter ?? PromoterStruct();
  set promoter(PromoterStruct? val) => _promoter = val;

  void updatePromoter(Function(PromoterStruct) updateFn) {
    updateFn(_promoter ??= PromoterStruct());
  }

  bool hasPromoter() => _promoter != null;

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        teamId: castToType<int>(data['teamId']),
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        profile: data['profile'] as String?,
        action: ActionStruct.maybeFromMap(data['action']),
        store: StoreStruct.maybeFromMap(data['store']),
        promoter: PromoterStruct.maybeFromMap(data['promoter']),
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map ? TeamStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'teamId': _teamId,
        'name': _name,
        'phone': _phone,
        'profile': _profile,
        'action': _action?.toMap(),
        'store': _store?.toMap(),
        'promoter': _promoter?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'teamId': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'profile': serializeParam(
          _profile,
          ParamType.String,
        ),
        'action': serializeParam(
          _action,
          ParamType.DataStruct,
        ),
        'store': serializeParam(
          _store,
          ParamType.DataStruct,
        ),
        'promoter': serializeParam(
          _promoter,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamStruct(
        teamId: deserializeParam(
          data['teamId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        profile: deserializeParam(
          data['profile'],
          ParamType.String,
          false,
        ),
        action: deserializeStructParam(
          data['action'],
          ParamType.DataStruct,
          false,
          structBuilder: ActionStruct.fromSerializableMap,
        ),
        store: deserializeStructParam(
          data['store'],
          ParamType.DataStruct,
          false,
          structBuilder: StoreStruct.fromSerializableMap,
        ),
        promoter: deserializeStructParam(
          data['promoter'],
          ParamType.DataStruct,
          false,
          structBuilder: PromoterStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamStruct &&
        teamId == other.teamId &&
        name == other.name &&
        phone == other.phone &&
        profile == other.profile &&
        action == other.action &&
        store == other.store &&
        promoter == other.promoter;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([teamId, name, phone, profile, action, store, promoter]);
}

TeamStruct createTeamStruct({
  int? teamId,
  String? name,
  String? phone,
  String? profile,
  ActionStruct? action,
  StoreStruct? store,
  PromoterStruct? promoter,
}) =>
    TeamStruct(
      teamId: teamId,
      name: name,
      phone: phone,
      profile: profile,
      action: action ?? ActionStruct(),
      store: store ?? StoreStruct(),
      promoter: promoter ?? PromoterStruct(),
    );
