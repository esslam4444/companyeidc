import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  T? get<T>(String key, {T? defaultValue});

  Future<bool> set<T>(String key, T value);

  Future<bool> remove<T>(String key);

  bool keyExists(String key);
}

@preResolve
@Singleton(as: LocalStorage)
class SharedPreferencesStorage implements LocalStorage {
  final SharedPreferences prefs;

  const SharedPreferencesStorage(this.prefs);

  @factoryMethod
  static Future<SharedPreferencesStorage> init() async {
    var prefs = await SharedPreferences.getInstance();
    print(prefs.getString('token'));
    return SharedPreferencesStorage(prefs);
  }

  @override
  T? get<T>(String key, {T? defaultValue}) {
    assert(T != dynamic);

    switch (T) {
      case String:
        return (prefs.getString(key) ?? defaultValue) as T?;
      case bool:
        return (prefs.getBool(key) ?? defaultValue) as T?;
      case int:
        return (prefs.getInt(key) ?? defaultValue) as T?;
      case double:
        return (prefs.getDouble(key) ?? defaultValue) as T?;
      default:
        throw ('Can not resolve Type $T');
    }
  }

  @override
  Future<bool> set<T>(String key, T value) {
    assert(T != dynamic);
    switch (T) {
      case String:
        return prefs.setString(key, value as String);
      case bool:
        return prefs.setBool(key, value as bool);
      case double:
        return prefs.setDouble(key, value as double);
      case int:
        return prefs.setInt(key, value as int);
      default:
        throw ('Can not set Type $T');
    }
  }

  @override
  Future<bool> remove<T>(String key) {
    return prefs.remove(key);
  }

  @override
  bool keyExists(String key) {
    return prefs.containsKey(key);
  }
}
