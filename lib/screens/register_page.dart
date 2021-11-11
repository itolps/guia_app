import 'package:flutter/material.dart';
import 'package:guia_app/controllers/user.controller.dart';
import 'package:guia_app/screens/login_page.dart';
import 'package:guia_app/screens/register_type_user_page.dart';
import 'package:guia_app/widgets/app_text.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();

  UserController userController = UserController();
}

class _RegisterPageState extends State<RegisterPage> {
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
                MaterialPageRoute(builder: (context) => LoginPage()),
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
            'Dê seu primeiro passo',
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
          SizedBox(height: _screenHeight * .04),
          AppText(
            'Nome',
            'Informe seu nome',
            controller: widget.userController.nameController,
          ),
          SizedBox(height: 5),
          AppText(
            'E-mail',
            'Informe seu e-mail',
            controller: widget.userController.emailController,
          ),
          SizedBox(height: 5),
          AppText(
            'Senha',
            'Informe sua senha',
            password: true,
            controller: widget.userController.passwordController,
          ),
          SizedBox(height: _screenHeight * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buttonProsseguir(),
            ],
          ),
          SizedBox(height: _screenHeight * .1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Possui uma conta?',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: _screenWidth * .043,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  ' Faça login.',
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

  _buttonProsseguir() {
    return Container(
      height: 46,
      width: _screenWidth * .45,
      child: RaisedButton(
        child: Text(
          "Prosseguir",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterTypeUserPage()),
          );
        },
        color: Color(0xFFFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
