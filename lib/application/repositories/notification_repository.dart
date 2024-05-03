import 'package:companyeidc/application/services/notification_service.dart';
import 'package:companyeidc/shared/models/notification.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class NotificationRepository {
  Future<Either<Failure, Notification>> findById({required String id});

  Future<Either<Failure, List<Notification>>> findAll();
}

@Injectable(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationService service;

  NotificationRepositoryImpl(this.service);

  @override
  Future<Either<Failure, Notification>> findById({required String id}) async {
    try {
      return right(await service.findById(id));
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Notification>>> findAll() async {
    try {
      return right(await service.findAll());
    } on DioError catch (error) {
      if (error.type == DioErrorType.response) {
        return left(error.response?.data);
      } else {
        return left(ConnectionFailure());
      }
    }
  }
}
