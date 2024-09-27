// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportStoresStruct extends BaseStruct {
  ReportStoresStruct({
    int? actionId,
    String? actionName,
    String? actionStartAt,
    String? actionFinishAt,
    int? storeId,
    String? storeName,
    int? countTeams,
    int? countLeads,
    int? countSells,
    double? presence,
    double? conversion,
    double? teamRate,
  })  : _actionId = actionId,
        _actionName = actionName,
        _actionStartAt = actionStartAt,
        _actionFinishAt = actionFinishAt,
        _storeId = storeId,
        _storeName = storeName,
        _countTeams = countTeams,
        _countLeads = countLeads,
        _countSells = countSells,
        _presence = presence,
        _conversion = conversion,
        _teamRate = teamRate;

  // "action_id" field.
  int? _actionId;
  int get actionId => _actionId ?? 0;
  set actionId(int? val) => _actionId = val;

  void incrementActionId(int amount) => actionId = actionId + amount;

  bool hasActionId() => _actionId != null;

  // "action_name" field.
  String? _actionName;
  String get actionName => _actionName ?? '';
  set actionName(String? val) => _actionName = val;

  bool hasActionName() => _actionName != null;

  // "action_start_at" field.
  String? _actionStartAt;
  String get actionStartAt => _actionStartAt ?? '';
  set actionStartAt(String? val) => _actionStartAt = val;

  bool hasActionStartAt() => _actionStartAt != null;

  // "action_finish_at" field.
  String? _actionFinishAt;
  String get actionFinishAt => _actionFinishAt ?? '';
  set actionFinishAt(String? val) => _actionFinishAt = val;

  bool hasActionFinishAt() => _actionFinishAt != null;

  // "store_id" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "store_name" field.
  String? _storeName;
  String get storeName => _storeName ?? '';
  set storeName(String? val) => _storeName = val;

  bool hasStoreName() => _storeName != null;

  // "count_teams" field.
  int? _countTeams;
  int get countTeams => _countTeams ?? 0;
  set countTeams(int? val) => _countTeams = val;

  void incrementCountTeams(int amount) => countTeams = countTeams + amount;

  bool hasCountTeams() => _countTeams != null;

  // "count_leads" field.
  int? _countLeads;
  int get countLeads => _countLeads ?? 0;
  set countLeads(int? val) => _countLeads = val;

  void incrementCountLeads(int amount) => countLeads = countLeads + amount;

  bool hasCountLeads() => _countLeads != null;

  // "count_sells" field.
  int? _countSells;
  int get countSells => _countSells ?? 0;
  set countSells(int? val) => _countSells = val;

  void incrementCountSells(int amount) => countSells = countSells + amount;

  bool hasCountSells() => _countSells != null;

  // "presence" field.
  double? _presence;
  double get presence => _presence ?? 0.0;
  set presence(double? val) => _presence = val;

  void incrementPresence(double amount) => presence = presence + amount;

  bool hasPresence() => _presence != null;

  // "conversion" field.
  double? _conversion;
  double get conversion => _conversion ?? 0.0;
  set conversion(double? val) => _conversion = val;

  void incrementConversion(double amount) => conversion = conversion + amount;

  bool hasConversion() => _conversion != null;

  // "team_rate" field.
  double? _teamRate;
  double get teamRate => _teamRate ?? 0.0;
  set teamRate(double? val) => _teamRate = val;

  void incrementTeamRate(double amount) => teamRate = teamRate + amount;

  bool hasTeamRate() => _teamRate != null;

  static ReportStoresStruct fromMap(Map<String, dynamic> data) =>
      ReportStoresStruct(
        actionId: castToType<int>(data['action_id']),
        actionName: data['action_name'] as String?,
        actionStartAt: data['action_start_at'] as String?,
        actionFinishAt: data['action_finish_at'] as String?,
        storeId: castToType<int>(data['store_id']),
        storeName: data['store_name'] as String?,
        countTeams: castToType<int>(data['count_teams']),
        countLeads: castToType<int>(data['count_leads']),
        countSells: castToType<int>(data['count_sells']),
        presence: castToType<double>(data['presence']),
        conversion: castToType<double>(data['conversion']),
        teamRate: castToType<double>(data['team_rate']),
      );

  static ReportStoresStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportStoresStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'action_id': _actionId,
        'action_name': _actionName,
        'action_start_at': _actionStartAt,
        'action_finish_at': _actionFinishAt,
        'store_id': _storeId,
        'store_name': _storeName,
        'count_teams': _countTeams,
        'count_leads': _countLeads,
        'count_sells': _countSells,
        'presence': _presence,
        'conversion': _conversion,
        'team_rate': _teamRate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'action_id': serializeParam(
          _actionId,
          ParamType.int,
        ),
        'action_name': serializeParam(
          _actionName,
          ParamType.String,
        ),
        'action_start_at': serializeParam(
          _actionStartAt,
          ParamType.String,
        ),
        'action_finish_at': serializeParam(
          _actionFinishAt,
          ParamType.String,
        ),
        'store_id': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'store_name': serializeParam(
          _storeName,
          ParamType.String,
        ),
        'count_teams': serializeParam(
          _countTeams,
          ParamType.int,
        ),
        'count_leads': serializeParam(
          _countLeads,
          ParamType.int,
        ),
        'count_sells': serializeParam(
          _countSells,
          ParamType.int,
        ),
        'presence': serializeParam(
          _presence,
          ParamType.double,
        ),
        'conversion': serializeParam(
          _conversion,
          ParamType.double,
        ),
        'team_rate': serializeParam(
          _teamRate,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReportStoresStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportStoresStruct(
        actionId: deserializeParam(
          data['action_id'],
          ParamType.int,
          false,
        ),
        actionName: deserializeParam(
          data['action_name'],
          ParamType.String,
          false,
        ),
        actionStartAt: deserializeParam(
          data['action_start_at'],
          ParamType.String,
          false,
        ),
        actionFinishAt: deserializeParam(
          data['action_finish_at'],
          ParamType.String,
          false,
        ),
        storeId: deserializeParam(
          data['store_id'],
          ParamType.int,
          false,
        ),
        storeName: deserializeParam(
          data['store_name'],
          ParamType.String,
          false,
        ),
        countTeams: deserializeParam(
          data['count_teams'],
          ParamType.int,
          false,
        ),
        countLeads: deserializeParam(
          data['count_leads'],
          ParamType.int,
          false,
        ),
        countSells: deserializeParam(
          data['count_sells'],
          ParamType.int,
          false,
        ),
        presence: deserializeParam(
          data['presence'],
          ParamType.double,
          false,
        ),
        conversion: deserializeParam(
          data['conversion'],
          ParamType.double,
          false,
        ),
        teamRate: deserializeParam(
          data['team_rate'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReportStoresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportStoresStruct &&
        actionId == other.actionId &&
        actionName == other.actionName &&
        actionStartAt == other.actionStartAt &&
        actionFinishAt == other.actionFinishAt &&
        storeId == other.storeId &&
        storeName == other.storeName &&
        countTeams == other.countTeams &&
        countLeads == other.countLeads &&
        countSells == other.countSells &&
        presence == other.presence &&
        conversion == other.conversion &&
        teamRate == other.teamRate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        actionId,
        actionName,
        actionStartAt,
        actionFinishAt,
        storeId,
        storeName,
        countTeams,
        countLeads,
        countSells,
        presence,
        conversion,
        teamRate
      ]);
}

ReportStoresStruct createReportStoresStruct({
  int? actionId,
  String? actionName,
  String? actionStartAt,
  String? actionFinishAt,
  int? storeId,
  String? storeName,
  int? countTeams,
  int? countLeads,
  int? countSells,
  double? presence,
  double? conversion,
  double? teamRate,
}) =>
    ReportStoresStruct(
      actionId: actionId,
      actionName: actionName,
      actionStartAt: actionStartAt,
      actionFinishAt: actionFinishAt,
      storeId: storeId,
      storeName: storeName,
      countTeams: countTeams,
      countLeads: countLeads,
      countSells: countSells,
      presence: presence,
      conversion: conversion,
      teamRate: teamRate,
    );
