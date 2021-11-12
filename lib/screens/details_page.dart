import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:guia_app/core/theme/app_icons.dart';
import 'package:guia_app/screens/home_page.dart';
import 'package:guia_app/screens/payment_page.dart';
import 'package:guia_app/widgets/bottom_navigator.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _currentIndex = 0;

  double _screenHeight = 0;
  double _screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    _screenHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) -
        _appBar().preferredSize.height;
    _screenWidth = MediaQuery.of(context).size.width;

    final List<String> imageList = [
      "https://i.pinimg.com/736x/58/ba/8b/58ba8bc8d560d03e5de064a222a52564.jpg",
      "https://i.pinimg.com/736x/58/ba/8b/58ba8bc8d560d03e5de064a222a52564.jpg",
      "https://i.pinimg.com/736x/58/ba/8b/58ba8bc8d560d03e5de064a222a52564.jpg"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 200,
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                        ),
                        items: imageList
                            .map((e) => ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.network(
                                        e,
                                        width: 1050,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, bottom: 24, top: 15),
                    child: Text('Vôo Livre',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF191919))),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, bottom: 10),
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Prestador',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF191919)),
                          ),
                          Text(
                            'Francisco Viana',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF191919)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Descrição',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF191919)),
                          ),
                          Text(
                            'Voo livre é um esporte radical, com voo não motorizado, que utiliza as térmicas para realizar voos locais ou de grande distância...',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF191919)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Endereço',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF191919)),
                          ),
                          Text(
                            'Santuário Rainha do Sertão',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF191919)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Data/Horários',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF191919)),
                          ),
                          Text(
                            'Seg - Sexta / 9:00 - 16:00',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF191919)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Preço',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF191919)),
                          ),
                          Text(
                            'RS 100',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF191919)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0, right: 100, bottom: 24),
                    child: _buttonEntrar(),
                  ),
                )
              ],
            ),
          ),
          _bottomNavigator(),
        ],
      ),
    );
  }

  _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 5, top: 11),
          padding: EdgeInsets.only(left: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFFF914D)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ),
      ),
    );
  }

  _bottomNavigator() {
    return BottomNavigator(
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
    );
  }

  _buttonEntrar() {
    return Container(
      height: 40,
      width: 146,
      child: RaisedButton(
        child: Text(
          "Contratar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentPage()),
          );
        },
        color: Color(0xFFFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
