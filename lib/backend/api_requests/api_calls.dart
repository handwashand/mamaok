import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SmsCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? text = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SMS',
      apiUrl:
          'https://sms.ru/sms/send?api_id=299C10D8-DC5E-B025-3AE3-CF1D7A6CB017&to=${phone}&msg=${text}&json=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CityGoogleCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CityGoogle',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'key': "AIzaSyDlhhWbHWZovbjfafFqX3oWaHNrXT54Lms",
        'language': "ru",
        'components': "country:ru",
        'types': "locality",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic spisok(dynamic response) => getJsonField(
        response,
        r'''$.predictions''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].description''',
        true,
      );
  static dynamic descriptOne(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].structured_formatting.main_text''',
        true,
      );
  static dynamic descTwo(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].structured_formatting.secondary_text''',
        true,
      );
  static dynamic descThree(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].terms[:].value''',
        true,
      );
}

class UkassaCall {
  static Future<ApiCallResponse> call({
    int? value,
    String? key = '',
  }) {
    final body = '''
{
  "amount": {
    "value": "${value}",
    "currency": "RUB"
  },
    "capture": true,
    "payment_method_data": {
    "type": "bank_card"
  },
  "confirmation": {
    "type": "redirect",
    "return_url": "https://mom-ok-6p0dfi.flutterflow.app/payOK"
  },
  "description": "Пополнение баланса МамаОК"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Ukassa',
      apiUrl: 'https://api.yookassa.ru/v3/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic MjA3NDI3OnRlc3RfMlVHb0lFbFc1U2p0Sm5HZVQxOXZ6a203REtxbm9wclJ2dHRBRXRrZjdJOA==',
        'Idempotence-Key': '${key}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.confirmation.confirmation_url''',
      );
}

class UkasaStatusCall {
  static Future<ApiCallResponse> call({
    String? idpay = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UkasaStatus',
      apiUrl: 'https://api.yookassa.ru/v3/payments/${idpay}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic MjA3NDI3OnRlc3RfMlVHb0lFbFc1U2p0Sm5HZVQxOXZ6a203REtxbm9wclJ2dHRBRXRrZjdJOA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic summa(dynamic response) => getJsonField(
        response,
        r'''$.amount.value''',
      );
}

class AdressAddCall {
  static Future<ApiCallResponse> call({
    double? lat = 0,
    double? lon = 0,
    String? format = 'geojson',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AdressAdd',
      apiUrl: 'https://nominatim.openstreetmap.org/reverse?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'format': format,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.features[:].properties.address.city''',
      );
  static dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.features[:].properties.address.road''',
      );
  static dynamic house(dynamic response) => getJsonField(
        response,
        r'''$.features[:].properties.address.house_number''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
