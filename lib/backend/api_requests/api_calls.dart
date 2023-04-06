import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreatePredictionCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
    double? promptStrength = 0.8,
    int? inferenceSteps = 10,
    double? guidanceScale = 7.5,
  }) {
    final body = '''
{
  "version": "27b93a2413e7f36cd83da926f3656280b2931564ff050bf9575f1fdf9bcd7478",
  "input": {
    "prompt": "${prompt}",
    "width": 512,
    "height": 512,
    "prompt_strength": ${promptStrength},
    "num_inference_steps": ${inferenceSteps},
    "guidance_scale": ${guidanceScale},
    "scheduler": "K-LMS"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Prediction',
      apiUrl: 'https://api.replicate.com/v1/predictions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
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

  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.created_at''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic getUrl(dynamic response) => getJsonField(
        response,
        r'''$.urls.get''',
      );
  static dynamic version(dynamic response) => getJsonField(
        response,
        r'''$.version''',
      );
  static dynamic cancelUrl(dynamic response) => getJsonField(
        response,
        r'''$.urls.cancel''',
      );
}

class GetPredictionCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Prediction',
      apiUrl: 'https://api.replicate.com/v1/predictions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic completedAt(dynamic response) => getJsonField(
        response,
        r'''$.completed_at''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.created_at''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic prompt(dynamic response) => getJsonField(
        response,
        r'''$.input.prompt''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic outputImage(dynamic response) => getJsonField(
        response,
        r'''$.output''',
        true,
      );
  static dynamic version(dynamic response) => getJsonField(
        response,
        r'''$.version''',
      );
  static dynamic logs(dynamic response) => getJsonField(
        response,
        r'''$.logs''',
      );
}

class CancelPredictionCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    final body = '''
{ }''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel Prediction',
      apiUrl: 'https://api.replicate.com/v1/predictions/${id}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token API_KEY_HERE',
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

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
