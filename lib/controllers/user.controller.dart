import 'package:flutter/material.dart';
import 'package:guia_app/models/user.dart';
import 'package:guia_app/services/user.service.dart';

class UserController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  User _user;
  UserService _userService = UserService();


  Future<bool> create() async {
    _user = User();
    _user.name = nameController.text;
    _user.email = emailController.text;
    _user.password = passwordController.text;
    // _user.profilePicture = "foto";

    return await _userService.create(_user);
  }

  Future<bool> login() async {
    return await _userService.login(
        emailController.text, passwordController.text);
  }
}
