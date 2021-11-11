import 'dart:convert';

import 'package:guia_app/models/user.dart';
import 'package:guia_app/services/sharedPreferences.dart';
import 'package:http/http.dart' show Client;

class UserService {
  Client client = Client();
  SharedPref sharedPref = SharedPref();

  //Cadastrar
  Future<bool> create(User data) async {
    final response = await client.post(
      "http://192.168.0.107:3333/users",
      headers: {"content-type": "application/json"},
      body: User.userToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  // Login
  Future<bool> login(String email, password) async {
    Map data = {'username': email, 'password': password};

    var jsonResponse;

    final response = await client.post(
      "http://192.168.0.107:3333/login",
      body: data,
    );
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        sharedPref.saveToken("token", jsonResponse['access_token']);
        print("Response status: ${response.statusCode}");
        print("Response status: ${response.body}");
        // sharedPref.saveUser("user", jsonResponse['user']);
        //sharedPref.saveTeam("team", jsonResponse['team']);
      }
      return true;
    } else {
      return false;
    }
  }
}
