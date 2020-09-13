import 'dart:convert';

import 'package:guia_app/models/guide_services.dart';

class User {
  int id;
  String name;
  String email;
  String password;
  String profilePicture;
  // List<GuideServices> guideServices;

  User({this.id, this.name, this.email, this.password, this.profilePicture});

  factory User.fromJson(Map<String, dynamic> map) {
    return User(id: map["id"], name: map["name"], email: map["email"]);
  }

  Map<String, dynamic> toJson() {
  return {"id": id, "name": name, "email": email, "password": password, "profilePicture": profilePicture};
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, password: $password, profilePicture: $profilePicture}';
  }

  static List<User> userFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<User>.from(data.map((item) => User.fromJson(item)));
  }

  static String userToJson(User data) {
    final jsonData = data.toJson();
    return json.encode(jsonData);
  }

}