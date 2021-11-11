import 'package:flutter/material.dart';

class AppButtonGrey extends StatelessWidget {
  String text;
  Function() onPressed;

  AppButtonGrey(
    this.text,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 46,
      width: width * .7,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF009A84),
            fontSize: 18,
          ),
        ),
        onPressed: onPressed,
        color: Color(0xFFf3f3fd),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
