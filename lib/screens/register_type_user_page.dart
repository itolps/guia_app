import 'package:flutter/material.dart';
import 'package:guia_app/screens/register_page.dart';
import 'package:guia_app/widgets/app_button_grey.dart';
import 'package:guia_app/widgets/app_button_next.dart';

class RegisterTypeUserPage extends StatefulWidget {
  const RegisterTypeUserPage({Key key}) : super(key: key);

  @override
  _RegisterTypeUserPageState createState() => _RegisterTypeUserPageState();
}

class _RegisterTypeUserPageState extends State<RegisterTypeUserPage> {
  double _screenHeight = 0;
  double _screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    _screenHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) -
        _appBar().preferredSize.height;
    _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 5, top: 11),
          padding: EdgeInsets.only(left: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFFF914D)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
          ),
        ),
      ),
    );
  }

  _body() {
    return Column(
      children: [
        _lisView(),
        Divider(color: Color(0xFFFF914D)),
        AppButtonNext("Prosseguir", () {}),
      ],
    );
  }

  _lisView() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      height: _screenHeight * .81,
      child: ListView(
        children: [
          Text(
            'Qual perfil você identifica?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFF333333),
            ),
          ),
          SizedBox(height: _screenHeight * .06),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButtonGrey("Consumidor", () {}),
              AppButtonGrey("Prestador", () {}),
            ],
          ),
        ],
      ),
    );
  }
}
