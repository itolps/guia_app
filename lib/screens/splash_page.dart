import 'package:flutter/material.dart';
import 'package:guia_app/screens/getstarted_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _delay();
  }

  Future<void> _delay() async {
    await Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondaryAnimation) {
            return GetStartedPage();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF914D),
      body: Center(
        child: Image.asset(
          'assets/images/logo-splash.png',
          height: 250,
        ),
      ),
    );
  }
}
