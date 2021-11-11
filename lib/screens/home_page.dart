import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guia_app/controllers/home.controller.dart';
import 'package:guia_app/core/theme/app_icons.dart';
import 'package:guia_app/core/theme/app_typography.dart';
import 'package:guia_app/models/category.dart';
import 'package:guia_app/models/service.dart';

import 'package:guia_app/widgets/app_category.dart';
import 'package:guia_app/widgets/app_header_home.dart';
import 'package:guia_app/widgets/bottom_navigator.dart';
import 'package:guia_app/widgets/app_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final controller = HomeController();
  List<Category> categories;
  List<Service> services;

  @override
  void initState() {
    super.initState();
    categories = controller.getCategories();
    services = controller.getServices();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, inneBoxScroll) {
            return [
              AppHeaderHome(
                name: "Italo Lopes",
                email: "italobragalopes19@gmail.com",
                img: "assets/images/user.png",
              ),
            ];
          },
          body: Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    return await Future.value();
                  },
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 100,
                          child: ListView.builder(
                              itemCount: categories.length,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    left: index == 0 ? 16 : 0,
                                    right:
                                        index == categories.length - 1 ? 16 : 4,
                                  ),
                                  child: CategoryItem(
                                    category: categories[index],
                                  ),
                                );
                              }),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, right: 24, bottom: 24, top: 40),
                          child: Text('Serviços',
                              style: AppTypography.sessionTitle(
                                context,
                              )),
                        ),
                      ),
                      AppCard()
                    ],
                  ),
                ),
              ),
              BottomNavigator(
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                currentIndex: _currentIndex,
                items: [
                  BottomNavigatorItem(
                    label: "Inicio",
                    activeIcon: AppIcons.homeActive,
                    icon: AppIcons.home,
                  ),
                  BottomNavigatorItem(
                    label: "Reservas",
                    activeIcon: AppIcons.reservaActive,
                    icon: AppIcons.reserva,
                  ),
                  BottomNavigatorItem(
                    label: "Configuração",
                    activeIcon: AppIcons.settingActive,
                    icon: AppIcons.setting,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
