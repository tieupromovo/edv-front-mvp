// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadsStruct extends BaseStruct {
  LeadsStruct({
    int? leadId,
    int? actionId,
    int? storeId,
    String? lastContact,
    String? name,
    String? modelInterest,
    String? phone,
    String? protocol,
    String? visitAt,
    String? period,
    String? obs,
  })  : _leadId = leadId,
        _actionId = actionId,
        _storeId = storeId,
        _lastContact = lastContact,
        _name = name,
        _modelInterest = modelInterest,
        _phone = phone,
        _protocol = protocol,
        _visitAt = visitAt,
        _period = period,
        _obs = obs;

  // "leadId" field.
  int? _leadId;
  int get leadId => _leadId ?? 0;
  set leadId(int? val) => _leadId = val;

  void incrementLeadId(int amount) => leadId = leadId + amount;

  bool hasLeadId() => _leadId != null;

  // "actionId" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "storeId" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "lastContact" field.
  String? _lastContact;
  String get lastContact => _lastContact ?? '';
  set lastContact(String? val) => _lastContact = val;

  bool hasLastContact() => _lastContact != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "modelInterest" field.
  String? _modelInterest;
  String get modelInterest => _modelInterest ?? '';
  set modelInterest(String? val) => _modelInterest = val;

  bool hasModelInterest() => _modelInterest != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "protocol" field.
  String? _protocol;
  String get protocol => _protocol ?? '';
  set protocol(String? val) => _protocol = val;

  bool hasProtocol() => _protocol != null;

  // "visitAt" field.
  String? _visitAt;
  String get visitAt => _visitAt ?? '';
  set visitAt(String? val) => _visitAt = val;

  bool hasVisitAt() => _visitAt != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  set period(String? val) => _period = val;

  bool hasPeriod() => _period != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  set obs(String? val) => _obs = val;

  bool hasObs() => _obs != null;

  static LeadsStruct fromMap(Map<String, dynamic> data) => LeadsStruct(
        leadId: castToType<int>(data['leadId']),
        actionId: castToType<int>(data['actionId']),
        storeId: castToType<int>(data['storeId']),
        lastContact: data['lastContact'] as String?,
        name: data['name'] as String?,
        modelInterest: data['modelInterest'] as String?,
        phone: data['phone'] as String?,
        protocol: data['protocol'] as String?,
        visitAt: data['visitAt'] as String?,
        period: data['period'] as String?,
        obs: data['obs'] as String?,
      );

  static LeadsStruct? maybeFromMap(dynamic data) =>
      data is Map ? LeadsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'leadId': _leadId,
        'actionId': _actionId,
        'storeId': _storeId,
        'lastContact': _lastContact,
        'name': _name,
        'modelInterest': _modelInterest,
        'phone': _phone,
        'protocol': _protocol,
        'visitAt': _visitAt,
        'period': _period,
        'obs': _obs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leadId': serializeParam(
          _leadId,
          ParamType.int,
        ),
        'actionId': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'storeId': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'lastContact': serializeParam(
          _lastContact,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'modelInterest': serializeParam(
          _modelInterest,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'protocol': serializeParam(
          _protocol,
          ParamType.String,
        ),
        'visitAt': serializeParam(
          _visitAt,
          ParamType.String,
        ),
        'period': serializeParam(
          _period,
          ParamType.String,
        ),
        'obs': serializeParam(
          _obs,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeadsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeadsStruct(
        leadId: deserializeParam(
          data['leadId'],
          ParamType.int,
          false,
        ),
        actionId: deserializeParam(
          data['actionId'],
          ParamType.int,
          false,
        ),
        storeId: deserializeParam(
          data['storeId'],
          ParamType.int,
          false,
        ),
        lastContact: deserializeParam(
          data['lastContact'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        modelInterest: deserializeParam(
          data['modelInterest'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        protocol: deserializeParam(
          data['protocol'],
          ParamType.String,
          false,
        ),
        visitAt: deserializeParam(
          data['visitAt'],
          ParamType.String,
          false,
        ),
        period: deserializeParam(
          data['period'],
          ParamType.String,
          false,
        ),
        obs: deserializeParam(
          data['obs'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeadsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeadsStruct &&
        leadId == other.leadId &&
        actionId == other.actionId &&
        storeId == other.storeId &&
        lastContact == other.lastContact &&
        name == other.name &&
        modelInterest == other.modelInterest &&
        phone == other.phone &&
        protocol == other.protocol &&
        visitAt == other.visitAt &&
        period == other.period &&
        obs == other.obs;
  }

  @override
  int get hashCode => const ListEquality().hash([
        leadId,
        actionId,
        storeId,
        lastContact,
        name,
        modelInterest,
        phone,
        protocol,
        visitAt,
        period,
        obs
      ]);
}

LeadsStruct createLeadsStruct({
  int? leadId,
  int? actionId,
  int? storeId,
  String? lastContact,
  String? name,
  String? modelInterest,
  String? phone,
  String? protocol,
  String? visitAt,
  String? period,
  String? obs,
}) =>
    LeadsStruct(
      leadId: leadId,
      actionId: actionId,
      storeId: storeId,
      lastContact: lastContact,
      name: name,
      modelInterest: modelInterest,
      phone: phone,
      protocol: protocol,
      visitAt: visitAt,
      period: period,
      obs: obs,
    );
