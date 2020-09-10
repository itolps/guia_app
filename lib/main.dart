import 'package:flutter/material.dart';
import 'package:guia_app/screens/home.dart';
import 'package:guia_app/screens/signin.dart';
import 'package:guia_app/screens/signup.dart';
import 'package:guia_app/screens/welcome.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
      initialRoute: '',
      routes: {
        'Home': (context) => Home(),
        'Signin': (context) => Signin(),
        'Signup': (context) => Signup(),
      },
    ));
