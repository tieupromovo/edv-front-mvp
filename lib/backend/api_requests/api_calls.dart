import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OnBoarding Group Code

class OnBoardingGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'http://edv-mvp.eupromovo.com.br:8080/api/v1/onboarding';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
    'Authorization': 'Bearer [jwt]',
  };
  static ClientsListCall clientsListCall = ClientsListCall();
  static ClientsCheckInCall clientsCheckInCall = ClientsCheckInCall();
  static ClientsCheckOutCall clientsCheckOutCall = ClientsCheckOutCall();
  static TeamsCheckInCall teamsCheckInCall = TeamsCheckInCall();
  static TeamsCheckOutCall teamsCheckOutCall = TeamsCheckOutCall();
  static TeamsListCall teamsListCall = TeamsListCall();
  static CompletedSaleCall completedSaleCall = CompletedSaleCall();
}

class ClientsListCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Clients List',
      apiUrl: '$baseUrl/clients',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClientsCheckInCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? invitationType = '',
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "invitation_type": "$invitationType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ClientsCheckIn',
      apiUrl: '$baseUrl/clients',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClientsCheckOutCall {
  Future<ApiCallResponse> call({
    int? onboardingClientId,
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ClientsCheckOut',
      apiUrl: '$baseUrl/clients/$onboardingClientId/checkout',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TeamsCheckInCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Teams CheckIn',
      apiUrl: '$baseUrl/teams/$teamId/checkin',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TeamsCheckOutCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Teams CheckOut',
      apiUrl: '$baseUrl/teams/$teamId/checkout',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TeamsListCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Teams List',
      apiUrl: '$baseUrl/teams',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompletedSaleCall {
  Future<ApiCallResponse> call({
    int? onboardingclientId,
    int? promoterId,
    String? jwt = '',
  }) async {
    final baseUrl = OnBoardingGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Completed Sale',
      apiUrl:
          '$baseUrl/clients/$onboardingclientId/completed_sale/$promoterId',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OnBoarding Group Code

/// Start Operation Group Code

class OperationGroup {
  static String getBaseUrl() =>
      'http://edv-mvp.eupromovo.com.br/api/v1/operation';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
  };
}

/// End Operation Group Code

/// Start Action Group Code

class ActionGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
    'Authorization': 'Bearer [jwt]',
  };
  static StoreGetAllCall storeGetAllCall = StoreGetAllCall();
}

class StoreGetAllCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? jwt = '',
  }) async {
    final baseUrl = ActionGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Store GetAll',
      apiUrl: '$baseUrl/edv/$actionId/stores',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Action Group Code

/// Start Reports Group Code

class ReportsGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'http://edv-mvp.eupromovo.com.br:8080/api/v1/reports';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
    'Authorization': 'Bearer [jwt]',
  };
  static ReportsHomePageCall reportsHomePageCall = ReportsHomePageCall();
  static ReportsStoreCall reportsStoreCall = ReportsStoreCall();
  static ReportsPresencesCall reportsPresencesCall = ReportsPresencesCall();
  static ReportsScheduledPresencesCall reportsScheduledPresencesCall =
      ReportsScheduledPresencesCall();
  static ReportsCheckInSalesCall reportsCheckInSalesCall =
      ReportsCheckInSalesCall();
  static ReportsCumulativeSalesCall reportsCumulativeSalesCall =
      ReportsCumulativeSalesCall();
}

class ReportsHomePageCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsHomePage',
      apiUrl: '$baseUrl/homepage',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
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
}

class ReportsStoreCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsStore',
      apiUrl: '$baseUrl/$actionId/stores',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
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
}

class ReportsPresencesCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsPresences',
      apiUrl: '$baseUrl/$actionId/presences',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
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
}

class ReportsScheduledPresencesCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsScheduledPresences',
      apiUrl: '$baseUrl/$actionId/scheduledPresences',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
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
}

class ReportsCheckInSalesCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? date = '',
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsCheckInSales',
      apiUrl: '$baseUrl/$actionId/checkinSales',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'action_date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReportsCumulativeSalesCall {
  Future<ApiCallResponse> call({
    int? actionId,
    String? date = '',
    String? jwt = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportsCumulativeSales',
      apiUrl: '$baseUrl/$actionId/cumulativeCheckinSales',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'action_date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Reports Group Code

/// Start Leads Group Code

class LeadsGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'http://edv-mvp.eupromovo.com.br:8080/api/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [jwt]',
  };
  static LeadsListCall leadsListCall = LeadsListCall();
}

class LeadsListCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = LeadsGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Leads List',
      apiUrl: '$baseUrl/leads',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Leads Group Code

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
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  static dynamic teamData(dynamic response) => getJsonField(
        response,
        r'''$.team''',
      );
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

class LojaUpdateCall {
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
      callName: 'LojaUpdate',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/stores/$storeId',
      callType: ApiCallType.PUT,
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
}

class ClienteListAllCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClienteListAll ',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/clients',
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
}

class ClienteCreateCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? name = '',
    int? phone,
    String? invitationType = '',
    String? date = '',
    int? storeId,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": $phone,
  "invitation_type": "$invitationType",
  "date": "$date",
  "storeId": $storeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ClienteCreate',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/clients',
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

class ActionUpdateCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
    String? name = '',
    String? startAt = '',
    String? finishAt = '',
    String? actionType = '',
    String? frequency = '',
    String? actionStatus = '',
    double? executionInvestment,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "actionType": "$actionType",
  "startAt": "$startAt",
  "finishAt": "$finishAt",
  "frequency": "$frequency",
  "executionInvestment": $executionInvestment,
  "actionStatus": "$actionStatus",
  "actionMakerId": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ActionUpdate',
      apiUrl: 'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId',
      callType: ApiCallType.PUT,
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

class ActionDeleteCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? actionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ActionDelete',
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
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores/$storeId/teams',
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

  static List<String>? profileTeam(dynamic response) => (getJsonField(
        response,
        r'''$[:].profile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic profileVendedor(dynamic response) => getJsonField(
        response,
        r'''$[?(@.profile=='VENDEDOR')]''',
      );
}

class TeamCreateCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? name = '',
    String? phone = '',
    String? type = '',
    int? storeId,
    int? actionId,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "profile": "$type",
  "storeId": $storeId,
  "actionId": $actionId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TeamCreate',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores/$storeId/teams',
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

class TeamDeleteCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? storeId,
    int? actionId,
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TeamDelete',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores/$storeId/teams/$teamId',
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
  static int? actionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.actionId''',
      ));
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

class LojaDeleteCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? storeId,
    int? actionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LojaDelete',
      apiUrl:
          'http://edv-mvp.eupromovo.com.br:8080/api/v1/actions/$actionId/stores/$storeId',
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
