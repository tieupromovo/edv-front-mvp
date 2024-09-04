// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientStruct extends BaseStruct {
  ClientStruct({
    int? onboardingClientId,
    int? clientId,
    String? name,
    String? phone,
    String? invitationType,
    String? checkinAt,
    String? checkoutAt,
    int? teamId,
    DateTime? checkinDatetime,
    DateTime? checkoutDatetime,
    String? salesManName,
    bool? completedSale,
  })  : _onboardingClientId = onboardingClientId,
        _clientId = clientId,
        _name = name,
        _phone = phone,
        _invitationType = invitationType,
        _checkinAt = checkinAt,
        _checkoutAt = checkoutAt,
        _teamId = teamId,
        _checkinDatetime = checkinDatetime,
        _checkoutDatetime = checkoutDatetime,
        _salesManName = salesManName,
        _completedSale = completedSale;

  // "OnboardingClient_id" field.
  int? _onboardingClientId;
  int get onboardingClientId => _onboardingClientId ?? 0;
  set onboardingClientId(int? val) => _onboardingClientId = val;

  void incrementOnboardingClientId(int amount) =>
      onboardingClientId = onboardingClientId + amount;

  bool hasOnboardingClientId() => _onboardingClientId != null;

  // "client_id" field.
  int? _clientId;
  int get clientId => _clientId ?? 0;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

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

  // "invitation_type" field.
  String? _invitationType;
  String get invitationType => _invitationType ?? '';
  set invitationType(String? val) => _invitationType = val;

  bool hasInvitationType() => _invitationType != null;

  // "checkin_at" field.
  String? _checkinAt;
  String get checkinAt => _checkinAt ?? '';
  set checkinAt(String? val) => _checkinAt = val;

  bool hasCheckinAt() => _checkinAt != null;

  // "checkout_at" field.
  String? _checkoutAt;
  String get checkoutAt => _checkoutAt ?? '';
  set checkoutAt(String? val) => _checkoutAt = val;

  bool hasCheckoutAt() => _checkoutAt != null;

  // "team_id" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;

  void incrementTeamId(int amount) => teamId = teamId + amount;

  bool hasTeamId() => _teamId != null;

  // "checkin_datetime" field.
  DateTime? _checkinDatetime;
  DateTime? get checkinDatetime => _checkinDatetime;
  set checkinDatetime(DateTime? val) => _checkinDatetime = val;

  bool hasCheckinDatetime() => _checkinDatetime != null;

  // "checkout_datetime" field.
  DateTime? _checkoutDatetime;
  DateTime? get checkoutDatetime => _checkoutDatetime;
  set checkoutDatetime(DateTime? val) => _checkoutDatetime = val;

  bool hasCheckoutDatetime() => _checkoutDatetime != null;

  // "salesMan_name" field.
  String? _salesManName;
  String get salesManName => _salesManName ?? '';
  set salesManName(String? val) => _salesManName = val;

  bool hasSalesManName() => _salesManName != null;

  // "completed_sale" field.
  bool? _completedSale;
  bool get completedSale => _completedSale ?? false;
  set completedSale(bool? val) => _completedSale = val;

  bool hasCompletedSale() => _completedSale != null;

  static ClientStruct fromMap(Map<String, dynamic> data) => ClientStruct(
        onboardingClientId: castToType<int>(data['OnboardingClient_id']),
        clientId: castToType<int>(data['client_id']),
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        invitationType: data['invitation_type'] as String?,
        checkinAt: data['checkin_at'] as String?,
        checkoutAt: data['checkout_at'] as String?,
        teamId: castToType<int>(data['team_id']),
        checkinDatetime: data['checkin_datetime'] as DateTime?,
        checkoutDatetime: data['checkout_datetime'] as DateTime?,
        salesManName: data['salesMan_name'] as String?,
        completedSale: data['completed_sale'] as bool?,
      );

  static ClientStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClientStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'OnboardingClient_id': _onboardingClientId,
        'client_id': _clientId,
        'name': _name,
        'phone': _phone,
        'invitation_type': _invitationType,
        'checkin_at': _checkinAt,
        'checkout_at': _checkoutAt,
        'team_id': _teamId,
        'checkin_datetime': _checkinDatetime,
        'checkout_datetime': _checkoutDatetime,
        'salesMan_name': _salesManName,
        'completed_sale': _completedSale,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OnboardingClient_id': serializeParam(
          _onboardingClientId,
          ParamType.int,
        ),
        'client_id': serializeParam(
          _clientId,
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
        'invitation_type': serializeParam(
          _invitationType,
          ParamType.String,
        ),
        'checkin_at': serializeParam(
          _checkinAt,
          ParamType.String,
        ),
        'checkout_at': serializeParam(
          _checkoutAt,
          ParamType.String,
        ),
        'team_id': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'checkin_datetime': serializeParam(
          _checkinDatetime,
          ParamType.DateTime,
        ),
        'checkout_datetime': serializeParam(
          _checkoutDatetime,
          ParamType.DateTime,
        ),
        'salesMan_name': serializeParam(
          _salesManName,
          ParamType.String,
        ),
        'completed_sale': serializeParam(
          _completedSale,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ClientStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientStruct(
        onboardingClientId: deserializeParam(
          data['OnboardingClient_id'],
          ParamType.int,
          false,
        ),
        clientId: deserializeParam(
          data['client_id'],
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
        invitationType: deserializeParam(
          data['invitation_type'],
          ParamType.String,
          false,
        ),
        checkinAt: deserializeParam(
          data['checkin_at'],
          ParamType.String,
          false,
        ),
        checkoutAt: deserializeParam(
          data['checkout_at'],
          ParamType.String,
          false,
        ),
        teamId: deserializeParam(
          data['team_id'],
          ParamType.int,
          false,
        ),
        checkinDatetime: deserializeParam(
          data['checkin_datetime'],
          ParamType.DateTime,
          false,
        ),
        checkoutDatetime: deserializeParam(
          data['checkout_datetime'],
          ParamType.DateTime,
          false,
        ),
        salesManName: deserializeParam(
          data['salesMan_name'],
          ParamType.String,
          false,
        ),
        completedSale: deserializeParam(
          data['completed_sale'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ClientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientStruct &&
        onboardingClientId == other.onboardingClientId &&
        clientId == other.clientId &&
        name == other.name &&
        phone == other.phone &&
        invitationType == other.invitationType &&
        checkinAt == other.checkinAt &&
        checkoutAt == other.checkoutAt &&
        teamId == other.teamId &&
        checkinDatetime == other.checkinDatetime &&
        checkoutDatetime == other.checkoutDatetime &&
        salesManName == other.salesManName &&
        completedSale == other.completedSale;
  }

  @override
  int get hashCode => const ListEquality().hash([
        onboardingClientId,
        clientId,
        name,
        phone,
        invitationType,
        checkinAt,
        checkoutAt,
        teamId,
        checkinDatetime,
        checkoutDatetime,
        salesManName,
        completedSale
      ]);
}

ClientStruct createClientStruct({
  int? onboardingClientId,
  int? clientId,
  String? name,
  String? phone,
  String? invitationType,
  String? checkinAt,
  String? checkoutAt,
  int? teamId,
  DateTime? checkinDatetime,
  DateTime? checkoutDatetime,
  String? salesManName,
  bool? completedSale,
}) =>
    ClientStruct(
      onboardingClientId: onboardingClientId,
      clientId: clientId,
      name: name,
      phone: phone,
      invitationType: invitationType,
      checkinAt: checkinAt,
      checkoutAt: checkoutAt,
      teamId: teamId,
      checkinDatetime: checkinDatetime,
      checkoutDatetime: checkoutDatetime,
      salesManName: salesManName,
      completedSale: completedSale,
    );
