import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BffMessageCall {
  static Future<ApiCallResponse> call({
    String? messageType = 'type',
    String? messageBody = 'body',
  }) async {
    final ffApiRequestBody = '''
{
    "messageType": "$messageType", 
    "messageBody": "$messageBody"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BffMessage',
      apiUrl:
          'https://8b5e-2804-14c-52-2402-9a9f-abc7-6bd2-359e.ngrok-free.app/bff',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic bffMessageResponse(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
    "username": "$username",
    "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.user_id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  static String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.role''',
      ));
}

class ActionCreateCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? startAt = '',
    String? finishAt = '',
    String? jwt = '',
    int? actionMakerId = 1,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "startAt": "$startAt",
  "finishAt": "$finishAt",
  "actionMakerId": $actionMakerId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ActionCreate',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? actionType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.actionType''',
      ));
  static String? startAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.startAt''',
      ));
  static String? finishAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.finishAt''',
      ));
  static String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frequency''',
      ));
  static String? actionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.actionStatus''',
      ));
  static int? executionInvestment(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.executionInvestment''',
      ));
}

class LojaCreateCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? jwt = '',
    double? goal,
    String? city = '',
    int? actionId,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "goal": $goal,

  "addresses": [
    {
      "city": "$city"
    }
  ],
  "actionId": $actionId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LojaCreate',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lojaName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? goal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.goal''',
      ));
  static dynamic cnpj(dynamic response) => getJsonField(
        response,
        r'''$.cnpj''',
      );
  static dynamic storeType(dynamic response) => getJsonField(
        response,
        r'''$.storeType''',
      );
}

class LojaATTCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? jwt = '',
    double? goal,
    String? city = '',
    int? actionId,
    int? storeId,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "goal": $goal,

  "addresses": [
    {
      "city": "$city"
    }
  ],
  "actionId": $actionId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LojaATT',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/stores/$storeId',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lojaName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? goal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.goal''',
      ));
  static dynamic cnpj(dynamic response) => getJsonField(
        response,
        r'''$.cnpj''',
      );
  static dynamic storeType(dynamic response) => getJsonField(
        response,
        r'''$.storeType''',
      );
}

class ActionListAllCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ActionListAll',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? actionName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? actionStartAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].startAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? actionFinishAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].finishAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? actionStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].actionStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? actionId(dynamic response) => (getJsonField(
        response,
        r'''$[:].actionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? listAll(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ActionListDetailCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ActionListDetail',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? actionName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? actionStartAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.startAt''',
      ));
  static String? actionFinishAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finishAt''',
      ));
  static String? actionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.actionStatus''',
      ));
  static int? actionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.actionId''',
      ));
}

class DELETEActionCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DELETEAction',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? actionName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? actionStartAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.startAt''',
      ));
  static String? actionFinishAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.finishAt''',
      ));
  static String? actionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.actionStatus''',
      ));
  static int? actionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.actionId''',
      ));
}

class LojasListAllCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LojasListAll',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? lojaName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? storeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].storeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? storeCity(dynamic response) => (getJsonField(
        response,
        r'''$[:].addresses[:].city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? storeGoal(dynamic response) => (getJsonField(
        response,
        r'''$[:].goal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? storeActionId(dynamic response) => (getJsonField(
        response,
        r'''$[:].actionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class TeamListAllCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
    int? storeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TeamListAll',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/store/$storeId/teams',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? equipeName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? equipePhone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? equipeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].storeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? profile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profile''',
      ));
  static int? teamId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamId''',
      ));
  static int? actionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].actionId''',
      ));
}

class TeamCreateCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? name = '',
    int? phone,
    String? type = '',
    int? storeId,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": $phone,
  "type": "$type",
  "storeId":$storeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TeamCreate',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/team',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? equipeName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? equipePhone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? equipeType(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? equipeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].storeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class TeamDetailCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TeamDetail',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/team/$teamId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? equipeName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? equipePhone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? equipeType(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? equipeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].storeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class LojasListDetailCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? storeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LojasListDetail',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/stores/$storeId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lojaName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? lojaId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.storeId''',
      ));
  static int? lojaGoal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.goal''',
      ));
  static String? lojaCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.addresses[:].city''',
      ));
  static dynamic actionId(dynamic response) => getJsonField(
        response,
        r'''$.actionId''',
      );
}

class LojasListPorIDCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? acaoId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LojasListPorID',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/$acaoId/stores',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lojaName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? lojaId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.storeId''',
      ));
  static int? lojaGoal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.goal''',
      ));
  static String? lojaCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.addresses[:].city''',
      ));
  static dynamic actionId(dynamic response) => getJsonField(
        response,
        r'''$.actionId''',
      );
}

class DELETELojasCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? storeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DELETELojas',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/stores/$storeId',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lojaName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
