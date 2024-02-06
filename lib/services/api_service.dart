import 'package:fl_app/services/base_provider.dart';

class ApiService {
  final BaseProvider _baseProvider;

  ApiService(this._baseProvider);

  Future get<T>({
    required String endpoint,
    Map<String, String>? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization' : '': '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response =
        await _baseProvider.get(endpoint, headers: customHeaders, query: query);

    return response.body;
  }

  Future post<T>({
    required String endpoint,
    Map<String, String>? body,
    Map<String, String>? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization' : '': '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.post(endpoint, body,
        headers: customHeaders, query: query);

    return response.body;
  }

  Future put<T>({
    required String endpoint,
    Map<String, String>? body,
    Map<String, String>? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization' : '': '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.put(endpoint, body,
        headers: customHeaders, query: query);

    return response.body;
  }

  Future delete<T>({
    required String endpoint,
    Map<String, String>? body,
    Map<String, String>? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization' : '': '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.delete(endpoint,
        headers: customHeaders, query: query);

    return response.body;
  }
}