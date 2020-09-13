import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  saveToken(String key, value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }
}