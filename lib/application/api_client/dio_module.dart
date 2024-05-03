import 'package:companyeidc/application/api_client/interceptors/error_response_transformer.dart';
import 'package:companyeidc/application/api_client/remote_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'interceptors/auth_interceptor.dart';

@module
abstract class DioModule {
  @singleton
  Dio dio(
    AuthInterceptor authInterceptor,
    ErrorResponseTransformer errorResponseTransformer,
    RemoteConfig remoteConfig,
  ) =>
      Dio(
        BaseOptions(baseUrl: remoteConfig.baseUrl),
      )..interceptors.addAll(
          [
            authInterceptor,
            PrettyDioLogger(
              requestBody: true,
              responseBody: true,
            ),
            errorResponseTransformer,
          ],
        );
}
