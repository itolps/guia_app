import 'package:flutter/material.dart';

class AppCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {},
      child: Card(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: width * .1,
                    height: width * .1,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(38, 115, 232, .2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text("TB",
                          style: TextStyle(
                              color: Color(0xFF2673E8),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text("Turma B",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "Lorem ipsum dolor sit amet, consectetur ssd apse ipsum sect sit ascrest, alecdass...",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xFF464646), fontSize: 16),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: width * .15,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 24, child: _elipse(Color(0xFFEBB87D), "BO")),
                        Positioned(
                          left: 12,
                          child: _elipse(Color(0xFFEB7DD9), "AA"),
                        ),
                        Positioned(
                          child: _elipse(Color(0xFF2673E8), "+20"),
                        )
                      ],
                    ),
                  ),
                  Text("+ 20 enviaram a redação",
                      style: TextStyle(color: Color(0xFF9C9C9C), fontSize: 13)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _elipse(Color color, String text) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
