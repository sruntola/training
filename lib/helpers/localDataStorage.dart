import 'package:shared_preferences/shared_preferences.dart';

class LocalDataStorage {
  static storeToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', token);
  }

  static Future<String>? getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var _token = pref.getString('token') ?? '';
    return _token;
  }

  static removeToke() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('token');
  }
}
