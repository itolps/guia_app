import 'package:flutter/material.dart';

class AppItemMenuSelected extends StatelessWidget {
  String text;

  AppItemMenuSelected(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Color(0xFF009A84),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
