import 'package:flutter/material.dart';
import 'package:guia_app/core/theme/app_colors.dart';
import 'package:guia_app/core/theme/app_icons.dart';

class BottomNavigator extends StatelessWidget {
  final List<BottomNavigatorItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigator(
      {Key key,
      @required this.items,
      this.currentIndex = 0,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 1,
            color: AppColors.grey2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items
                  .map((e) => e.copyWith(
                        isActive: items.indexOf(e) == currentIndex,
                        onTap: () => onTap(items.indexOf(e)),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigatorItem extends StatelessWidget {
  final String label;
  final String activeIcon;
  final String icon;
  final bool isActive;
  final Function onTap;

  BottomNavigatorItem copyWith(
      {String label,
      String activeIcon,
      String icon,
      bool isActive,
      Function onTap}) {
    return BottomNavigatorItem(
      label: label ?? this.label,
      activeIcon: activeIcon ?? this.activeIcon,
      icon: icon ?? this.icon,
      isActive: isActive ?? this.activeIcon,
      onTap: onTap ?? this.onTap,
    );
  }

  const BottomNavigatorItem(
      {Key key,
      @required this.label,
      @required this.activeIcon,
      @required this.icon,
      this.isActive = false,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            AppIcon(isActive ? activeIcon : icon),
            Text(
              label,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
