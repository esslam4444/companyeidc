import 'package:companyeidc/shared/models/notification.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'notification_service.g.dart';

const String resource = '/notifications';

@injectable
@RestApi()
abstract class NotificationService {
  @factoryMethod
  factory NotificationService(Dio dio) = _NotificationService;

  @GET('$resource/{id}')
  Future<Notification> findById(@Path('id') String id);

  @GET(resource)
  Future<List<Notification>> findAll();
}
