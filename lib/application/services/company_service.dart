import 'package:companyeidc/shared/models/company.dart';
import 'package:companyeidc/shared/models/company_search_result.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'company_service.g.dart';

const String resource = '/public/companies';

@injectable
@RestApi()
abstract class CompanyService {
  @factoryMethod
  factory CompanyService(Dio dio) = _CompanyService;

  @GET('$resource/check/{id}')
  Future<Company> findById(@Path('id') String id);

  @GET('/companies')
  Future<List<Company>> findAll();

  @GET('/public/_search/companies')
  Future<List<CompanySearchResult>> findByName({
    @Query('query') required String query,
    @Query('recapchaToken') String recapchaToken = '',
    @Query('size') int size = 5,
  });
}
