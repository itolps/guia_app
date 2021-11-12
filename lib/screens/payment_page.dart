import 'package:flutter/material.dart';
import 'package:guia_app/screens/details_page.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  double _screenHeight = 0;
  double _screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    _screenHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) -
        _appBar().preferredSize.height;
    _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text(
                    'Pagamento',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, bottom: 17, top: 80),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 19.0, bottom: 6, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/pix.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Pix",
                                    style: TextStyle(
                                        color: Color(0xFF191919),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0.0, 2.0))
                            ])),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, bottom: 17),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, bottom: 6, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/cartao.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Cartão",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFF009A84),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0.0, 2.0))
                            ])),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, bottom: 250),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, bottom: 6, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/dinheiro.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Dinheiro",
                                    style: TextStyle(
                                        color: Color(0xFF191919),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0.0, 2.0))
                            ])),
                  ),
                ),
                // SliverList(
                //   delegate: SliverChildListDelegate(
                //     restaurants
                //         .map((e) => RestaurantItemComponent(
                //               restaurant: e,
                //             ))
                //         .toList(),
                //   ),
                // ),
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
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  _buttonEntrar() {
    return Container(
      height: 40,
      width: 146,
      child: RaisedButton(
        child: Text(
          "Finalizar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        onPressed: () {},
        color: Color(0xFFFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
