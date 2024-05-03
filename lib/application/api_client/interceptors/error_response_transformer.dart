import 'dart:convert';

import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ErrorResponseTransformer extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Failure failure = ConnectionFailure();
    if (err.type == DioErrorType.response && err.response?.data != null) {
      final json = jsonDecode(err.response!.data);
      failure = ResponseFailure.fromJson(json);
    }
    handler.next(
      DioError(
        error: err.error,
        type: DioErrorType.response,
        response: err.response!.copyWith(
          requestOptions: err.requestOptions,
          data: failure,
        ),
        requestOptions: err.requestOptions,
      ),
    );
  }
}

extension ResponseX on Response {
  Response<T> copyWith<T>({
    T? data,
    RequestOptions? requestOptions,
    Headers? headers,
    int? statusCode,
    String? statusMessage,
    Map<String, dynamic>? extra,
    List<RedirectRecord>? redirects,
    bool? isRedirect,
  }) {
    return Response(
      data: data ?? this.data,
      headers: headers ?? this.headers,
      statusCode: statusCode ?? this.statusCode,
      statusMessage: statusMessage ?? this.statusMessage,
      extra: extra ?? this.extra,
      redirects: redirects ?? this.redirects,
      isRedirect: isRedirect ?? this.isRedirect,
      requestOptions: requestOptions ?? this.requestOptions,
    );
  }
}
