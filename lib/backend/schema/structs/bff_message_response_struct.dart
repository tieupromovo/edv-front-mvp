// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BffMessageResponseStruct extends BaseStruct {
  BffMessageResponseStruct({
    String? messageType,
    String? messageBody,
    String? status,
  })  : _messageType = messageType,
        _messageBody = messageBody,
        _status = status;

  // "messageType" field.
  String? _messageType;
  String get messageType => _messageType ?? '';
  set messageType(String? val) => _messageType = val;

  bool hasMessageType() => _messageType != null;

  // "messageBody" field.
  String? _messageBody;
  String get messageBody => _messageBody ?? '';
  set messageBody(String? val) => _messageBody = val;

  bool hasMessageBody() => _messageBody != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static BffMessageResponseStruct fromMap(Map<String, dynamic> data) =>
      BffMessageResponseStruct(
        messageType: data['messageType'] as String?,
        messageBody: data['messageBody'] as String?,
        status: data['status'] as String?,
      );

  static BffMessageResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? BffMessageResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'messageType': _messageType,
        'messageBody': _messageBody,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'messageType': serializeParam(
          _messageType,
          ParamType.String,
        ),
        'messageBody': serializeParam(
          _messageBody,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static BffMessageResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BffMessageResponseStruct(
        messageType: deserializeParam(
          data['messageType'],
          ParamType.String,
          false,
        ),
        messageBody: deserializeParam(
          data['messageBody'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BffMessageResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BffMessageResponseStruct &&
        messageType == other.messageType &&
        messageBody == other.messageBody &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([messageType, messageBody, status]);
}

BffMessageResponseStruct createBffMessageResponseStruct({
  String? messageType,
  String? messageBody,
  String? status,
}) =>
    BffMessageResponseStruct(
      messageType: messageType,
      messageBody: messageBody,
      status: status,
    );
