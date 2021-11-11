import 'package:flutter/material.dart';

class AppBanners extends StatefulWidget {
  final List<AppBannerItem> list;

  const AppBanners({Key key, this.list}) : super(key: key);

  @override
  State<AppBanners> createState() => _AppBannersState();
}

class _AppBannersState extends State<AppBanners> {
  final PageController _pageController = PageController(
    viewportFraction: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: widget.list,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}

class AppBannerItem extends StatelessWidget {
  final String imagePath;

  const AppBannerItem({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
