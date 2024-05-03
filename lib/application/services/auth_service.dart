import 'package:companyeidc/shared/models/login_credentials.dart';
import 'package:companyeidc/shared/models/user_account.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@injectable
@RestApi()
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

  @POST('/authenticate')
  Future<HttpResponse> authenticate({
    @Body() required LoginCredentials credentials,
  });

  @GET('/account')
  Future<UserAccount> getUser();
}
