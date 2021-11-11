import 'package:flutter/material.dart';

class AppButtonFullOutline extends StatelessWidget {
  String text;
  Function() onPressed;

  AppButtonFullOutline(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: OutlineButton(
        onPressed: onPressed,
        borderSide: BorderSide(color: Color(0xFFFF914D), width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFF914D),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
