import 'package:companyeidc/shared/models/company_register_request.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'company_register_request_service.g.dart';

const String resource = '/company-register-requests';

@injectable
@RestApi()
abstract class CompanyRegisterRequestService {
  @factoryMethod
  factory CompanyRegisterRequestService(Dio dio) = _CompanyRegisterRequestService;

  @GET('$resource/{id}')
  Future<CompanyRegisterRequest> findById(@Path('id') String id);

  @GET(resource)
  Future<List<CompanyRegisterRequest>> findAll();
}
