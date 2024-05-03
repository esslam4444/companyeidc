// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PeopleService implements PeopleService {
  _PeopleService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MemberShipCheckResult> getMemberShip(
      {required registerNo, required nationalNo, recapchaToken = '0'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'registerNo': registerNo,
      r'nationalNo': nationalNo,
      r'recapchaToken': recapchaToken
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MemberShipCheckResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/public/people/check-membership',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MemberShipCheckResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MemberShipCheckResult> checkMyMemberships() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MemberShipCheckResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/public/people/check-my-membership',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MemberShipCheckResult.fromJson(_result.data!);
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
