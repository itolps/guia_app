import 'package:flutter/material.dart';
import 'package:guia_app/controllers/user.controller.dart';
import 'package:guia_app/screens/getstarted_page.dart';
import 'package:guia_app/screens/home_page.dart';
import 'package:guia_app/screens/register_page.dart';
import 'package:guia_app/services/sharedPreferences.dart';
import 'package:guia_app/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  UserController userController = UserController();
  SharedPref sharedPref = SharedPref();

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
                MaterialPageRoute(builder: (context) => GetStartedPage()),
              );
            },
          ),
        ),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 16),
      child: ListView(
        children: [
          Text(
            'Bem-vindo',
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
          AppText(
            'E-mail',
            'Informe seu e-mail',
            controller: userController.emailController,
          ),
          SizedBox(height: 5),
          AppText(
            'Senha',
            'Informe sua senha',
            password: true,
            controller: userController.passwordController,
          ),
          SizedBox(height: 5),
          Text(
            'Esqueceu sua senha?',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFFF914D),
            ),
          ),
          SizedBox(height: _screenHeight * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buttonEntrar(),
            ],
          ),
          SizedBox(height: _screenHeight * .1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Não possui uma conta?',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: _screenWidth * .043,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  ' Cadastre-se.',
                  style: TextStyle(
                    color: Color(0xFFFF914D),
                    fontSize: _screenWidth * .043,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buttonEntrar() {
    return Container(
      height: 46,
      width: _screenWidth * .45,
      child: RaisedButton(
        child: Text(
          "Entrar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
          // userController.login().then((onValue) async {
          //   if (onValue) {
          //     Navigator.of(context).pushAndRemoveUntil(
          //         MaterialPageRoute(
          //             builder: (BuildContext context) => HomePage()),
          //         (Route<dynamic> route) => false);
          //   } else {
          //     print("ERRO! E-mail ou senha invalidos");
          //   }
          // });
        },
        color: Color(0xFFFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
