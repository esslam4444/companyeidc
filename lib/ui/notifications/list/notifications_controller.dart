import 'package:companyeidc/application/repositories/notification_repository.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:companyeidc/shared/models/notification.dart';
import 'package:companyeidc/shared/state/async_data_state.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final notificationsProvider = StateNotifierProvider.autoDispose<NotificationsController, AsyncDataState<List<Notification>>>(
  (ref) => ref.resolve<NotificationsController>()..fetch(),
);

@injectable
class NotificationsController extends StateController<AsyncDataState<List<Notification>>> {
  NotificationsController(this.repository) : super(const AsyncDataState.loading());

  final NotificationRepository repository;

  Future fetch() async {
    state = const AsyncDataState.loading();
    final result = await repository.findAll();
    state = result.match(
      (failure) => AsyncDataState.failure(failure),
      (result) => AsyncDataState.loaded(result),
    );
  }
}
