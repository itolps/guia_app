import 'package:flutter/material.dart';

class AppHeaderHome extends StatelessWidget {
  final String name;
  final String email;
  final String img;

  AppHeaderHome(
      {Key key, @required this.name, @required this.email, @required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _AppHeaderHomeDelegate(name, email, img),
    );
  }
}

class _AppHeaderHomeDelegate extends SliverPersistentHeaderDelegate {
  final String name;
  final String email;
  final String img;

  _AppHeaderHomeDelegate(this.name, this.email, this.img);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .15,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(img),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Olá,",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  email,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
