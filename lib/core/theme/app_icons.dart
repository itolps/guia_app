import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const fav = '${pathIcons}fav.svg';
  static const favLine = '${pathIcons}fav_line.svg';
  static const offer = '${pathIcons}offer.svg';
  static const star = '${pathIcons}star.svg';

  static const homeActive = '${pathIcons}home_active.svg';
  static const home = '${pathIcons}home.svg';

  static const reservaActive = '${pathIcons}work_active.svg';
  static const reserva = '${pathIcons}work.svg';

  static const settingActive = '${pathIcons}settings_active.svg';
  static const setting = '${pathIcons}settings.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;
  const AppIcon(
    this.icon, {
    Key key,
    this.size,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      color: color ?? Colors.black,
    );
  }
}
