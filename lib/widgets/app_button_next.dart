import 'package:flutter/material.dart';

class AppButtonNext extends StatelessWidget {
  String text;
  Function() onPressed;

  AppButtonNext(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 46,
      width: width * 1,
      margin: EdgeInsets.all(16),
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: onPressed,
        color: Color(0xFFFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
