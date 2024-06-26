import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic? promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic createdTimestamp(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

/// End OpenAI ChatGPT Group Code

/// Start details Group Code

class DetailsGroup {
  static String baseUrl = 'https://tree-nation.com/api/projects/3/species';
  static Map<String, String> headers = {};
}

/// End details Group Code

class OpenAimodelCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'OpenAimodel',
      apiUrl: 'https://api.openai.com/v1/models',
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
      alwaysAllowBody: false,
    );
  }
}

class TextcompletionCall {
  static Future<ApiCallResponse> call({
    String? model = 'text-davinci-003',
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "${model}",
  "prompt": "${prompt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'textcompletion',
      apiUrl: 'https://api.openai.com/v1/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic createdat(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  static dynamic text(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].text''',
      );
  static dynamic finishreason(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].finish_reason''',
      );
}

class TexteditCall {
  static Future<ApiCallResponse> call({
    String? model = 'text-davinci-003',
    String? input = '',
    String? instruction = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "${model}",
  "input": "${input}",
"instruction": "${instruction}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'textedit',
      apiUrl: 'https://api.openai.com/v1/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic createdat(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  static dynamic text(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].text''',
      );
}

class ImagegenerationCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  
  "prompt": "${prompt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'imagegeneration',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic imageurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].url''',
      );
}

class TreeDetailsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'treeDetails',
      apiUrl: 'https://tree-nation.com/api/species/48',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$..image''',
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
