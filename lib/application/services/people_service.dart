import 'package:companyeidc/shared/models/member_ship_check_results.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'people_service.g.dart';

const String resource = '/public/people';

@injectable
@RestApi()
abstract class PeopleService {
  @factoryMethod
  factory PeopleService(Dio dio) = _PeopleService;

  @GET('$resource/check-membership')
  Future<MemberShipCheckResult> getMemberShip({
    @Query('registerNo') required String registerNo,
    @Query('nationalNo') required String nationalNo,
    @Query('recapchaToken') String recapchaToken = '0',
  });

  @GET('$resource/check-my-membership')
  Future<MemberShipCheckResult> checkMyMemberships();
}
