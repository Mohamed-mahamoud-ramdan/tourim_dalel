import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  bool? getbool({required String key}) {
    return sharedPreferences.getBool(key);
  }

  double? getDouble({required String key}) {
    return sharedPreferences.getDouble(key);
  }

  int? getInt({required String key}) {
    return sharedPreferences.getInt(key);
  }

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else {
      throw ArgumentError('Unsupported value type');
    }
  }

  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  checkContain({required String key}) {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> removeOneData({required String key}) async {
    return await sharedPreferences.remove(key);
  }
}
