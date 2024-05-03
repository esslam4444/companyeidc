// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_name_request_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BusinessNameRequestService implements BusinessNameRequestService {
  _BusinessNameRequestService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BusinessNameRequest> findById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BusinessNameRequest>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/business-name-requests/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BusinessNameRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<BusinessNameRequest>> findAll() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<BusinessNameRequest>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/business-name-requests',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            BusinessNameRequest.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
