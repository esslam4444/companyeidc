import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

import 'di_config.config.dart';

final getIt = GetIt.instance;

final dependenciesProvider = Provider((_) => getIt);

extension RefX on Ref {
  T resolve<T extends Object>() => read(dependenciesProvider)<T>();
}

@InjectableInit(
  initializerName: 'init',
  asExtension: true,
)
Future initInjection() {
  return getIt.init();
}
