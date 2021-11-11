import 'package:flutter/material.dart';
import 'package:guia_app/screens/register_page.dart';
import 'package:guia_app/widgets/app_button_full.dart';
import 'package:guia_app/widgets/app_button_full_outline.dart';

import 'login_page.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  double ScreenHeight = 0;

  @override
  Widget build(BuildContext context) {
    ScreenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: ListView(
        children: [
          SizedBox(height: ScreenHeight * .1),
          Image.asset(
            'assets/images/logo-app.png',
            height: 250,
          ),
          SizedBox(height: 15),
          Text(
            'Guia Sertão',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFF914D),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF333333),
            ),
          ),
          SizedBox(height: ScreenHeight * .1),
          AppButtonFull("Entrar", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }),
          SizedBox(height: 15),
          AppButtonFullOutline("Cadastre-se", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          }),
        ],
      ),
    );
  }
}
