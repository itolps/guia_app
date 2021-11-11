import 'package:flutter/material.dart';
import 'package:guia_app/core/theme/app_images.dart';
import 'package:guia_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          category.picture,
          height: 80,
        ),
        Text(
          category?.name ?? '',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
