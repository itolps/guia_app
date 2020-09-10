import 'package:flutter/material.dart';
import 'package:guia_app/widgets/icon_card.dart';
import 'package:guia_app/widgets/images_cards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: (){},),
                  IconButton(icon: Icon(Icons.person_outline, size: 30, color: Colors.black,), onPressed: (){},),
                ],
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: 'Olá, ', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 145, 77, 1.0))),
                      TextSpan(text: 'o que você está procurando?')
                    ], style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Categorias', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

                  ),
                  IconButton(icon: Icon(Icons.more_horiz, color: Colors.black,), onPressed: (){},),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconCard(iconData: Icons.beach_access, text: 'Turismo',),
                  IconCard(iconData: Icons.filter_vintage, text: 'Beleza',),
                  IconCard(iconData: Icons.directions, text: 'Arte',),
                  IconCard(iconData: Icons.laptop_windows, text: 'Tecnologia',),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Destaques', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

                  ),

                  IconButton(icon: Icon(Icons.more_horiz, color: Colors.black,), onPressed: (){},),

                ],
              ),
              SizedBox(height: 10,),
              Expanded(child: Container(child: ImageCards())),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.bottomCenter,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.home, color: Color.fromRGBO(255, 145, 77, 1.0), size: 30,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.search, color: Colors.black, size: 30,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.favorite_border, color: Colors.black, size: 30,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.person_outline, color: Colors.black, size: 30,), onPressed: (){}),
                  ],
                )
                ,
              )
            ],
          ),
        ),
      ),
    );
  }
}