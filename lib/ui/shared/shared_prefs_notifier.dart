import 'package:companyeidc/application/local/local_storage.dart';
import 'package:companyeidc/dependencies/di_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalPrefKeys {
  static const String isFirstLaunch = 'is_first_launch_key';
  static const String token = 'id_token';
  static const String firebaseToken = 'firebase_token';
}

class PrefNotifier<T> extends StateNotifier<T> {
  PrefNotifier(this.storage, this.prefKey, this.defaultValue) : super(storage.get<T>(prefKey) ?? defaultValue);

  final LocalStorage storage;
  final String prefKey;
  final T defaultValue;

  /// Updates the value asynchronously.
  Future<void> update(T value) async {
    await storage.set<T>(prefKey, value);
    super.state = value;
  }

  /// Do not use the setter for state.
  /// Instead, use `await update(value).`
  @override
  set state(T value) {
    assert(false, "Don't use the setter for state. Instead use `await update(value)`.");
    Future(() async {
      await update(value);
    });
  }
}

final firstLaunchPrefProvider = StateNotifierProvider<PrefNotifier<bool>, bool>(
  (ref) => PrefNotifier<bool>(
    ref.resolve<LocalStorage>(),
    LocalPrefKeys.isFirstLaunch,
    true,
  ),
);
