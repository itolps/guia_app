import 'package:flutter/material.dart';

class AppItemMenu extends StatelessWidget {
  String text;

  AppItemMenu(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF969E9C)),
        ),
      ),
    );
  }
}
