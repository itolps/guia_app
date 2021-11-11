import 'package:flutter/material.dart';
import 'package:guia_app/widgets/app_item_menu.dart';
import 'package:guia_app/widgets/app_item_menu_selected.dart';

class AppMenuFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(left: 16),
      height: height * .05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppItemMenuSelected("Turismo"),
          AppItemMenu("Tecnologia"),
          AppItemMenu("Gastronomia"),
          AppItemMenu("Educação"),
          AppItemMenu("Beleza"),
          AppItemMenu("Esporte"),
        ],
      ),
    );
  }
}
