import 'package:flutter/material.dart';
import 'package:guia_app/screens/home_page.dart';
import 'package:guia_app/screens/signin.dart';
import 'package:guia_app/screens/signup.dart';
import 'package:guia_app/screens/splash_page.dart';
import 'package:guia_app/screens/welcome.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: '',
      routes: {
        'Home': (context) => HomePage(),
        'Signin': (context) => Signin(),
        'Signup': (context) => Signup(),
      },
    ));
