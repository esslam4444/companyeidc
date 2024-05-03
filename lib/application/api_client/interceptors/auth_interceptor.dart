import 'package:companyeidc/application/local/local_storage.dart';
import 'package:companyeidc/ui/shared/shared_prefs_notifier.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.storage);
  final LocalStorage storage;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = storage.get<String>(LocalPrefKeys.token);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }
}
