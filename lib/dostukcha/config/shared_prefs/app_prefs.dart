import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class AppPrefs {
  Future<void> setValue<T>(String key, T value) async {
    final sharedPref = await SharedPreferences.getInstance();

    switch (T) {
      case String:
        sharedPref.setString(key, value as String);
        break;
      case int:
        sharedPref.setInt(key, value as int);
        break;
      case double:
        sharedPref.setDouble(key, value as double);
        break;
      case const (List<String>):
        sharedPref.setStringList(key, value as List<String>);
        break;
      case bool:
        sharedPref.setBool(key, value as bool);
        break;
    }
  }

  Future<T?> getValue<T>(String key) async {
    final sharedPref = await SharedPreferences.getInstance();

    switch (T) {
      case String:
        return sharedPref.getString(key) as T?;
      case int:
        return sharedPref.getInt(key) as T?;
      case double:
        return sharedPref.getDouble(key) as T?;
      case bool:
        return sharedPref.getBool(key) as T?;
      case const (List<String>):
        sharedPref.getStringList(key) as T?;
        break;
    }
    return null;
  }

  Future<void> remove(String key) async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove(key);
  }
}
