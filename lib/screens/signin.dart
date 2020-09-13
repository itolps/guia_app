import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guia_app/controllers/user.controller.dart';
import 'package:guia_app/screens/home.dart';
import 'package:guia_app/services/sharedPreferences.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  UserController userController = UserController();
  SharedPref sharedPref = SharedPref();

  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();

  // bool _isLoading = false;

  // signIn(String email, String password) async {
  //   String url = "http://192.168.0.105:3000/auth/login";
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   Map body = {"username": email, "password": password};
  //   var jsonResponse;
  //   var res = await http.post(url, body: body);

  //   if (res.statusCode == 200) {
  //     jsonResponse = json.decode(res.body);

  //     print("Response status: ${res.statusCode}");

  //     print("Response status: ${res.body}");

  //     if (jsonResponse != null) {
  //       setState(() {
  //         _isLoading = false;
  //       });

  //       sharedPreferences.setString("token", jsonResponse['token']);
  //     }
  //   } else {
  //     setState(() {
  //       _isLoading = false;
  //     });

  //     print("Response status: ${res.body}");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Image.asset(
                'images/guia.png',
                width: 250,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.email), onPressed: () {}),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          controller: userController.emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.lock), onPressed: () {}),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          controller: userController.passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Senha",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      color: Color.fromRGBO(255, 145, 77, 1.0),
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      onPressed: () {
                        userController.login().then((onValue) async {
                          if (onValue) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (BuildContext context) => Home()),
                              (Route<dynamic> route) => false);
                          
                          } else {
                            print("ERRO! E-mail ou senha invalidos");
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'Signup');
                },
                child: RichText(
                  text: TextSpan(
                      text: "Não tem uma conta?",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text: " CADASTRE-SE",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 145, 77, 1.0),
                                fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
