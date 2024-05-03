import 'package:companyeidc/shared/models/business_name_request.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'business_name_request_service.g.dart';

const String resource = '/business-name-requests';

@injectable
@RestApi()
abstract class BusinessNameRequestService {
  @factoryMethod
  factory BusinessNameRequestService(Dio dio) = _BusinessNameRequestService;

  @GET('$resource/{id}')
  Future<BusinessNameRequest> findById(@Path('id') String id);

  @GET(resource)
  Future<List<BusinessNameRequest>> findAll();
}
