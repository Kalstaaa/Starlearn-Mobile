import 'package:flutter/material.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 180,
              margin: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(145, 67, 207, 254),
                  borderRadius: BorderRadius.circular(25)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 100, left: 120),
                        child: Text(
                          "Dilan 1990",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 60),
                              child: Text(
                                "by Pidi Baiq",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 197, 196, 196),
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 100),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ]),
            ),
            Positioned(
                left: 40,
                top: 10,
                child: Container(
                  width: 100.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('images/Dilan.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ],
        ),
        Stack(
          children: [
            Container(
              height: 180,
              margin: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(145, 67, 207, 254),
                  borderRadius: BorderRadius.circular(25)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 100, left: 120),
                        child: Text(
                          "Dilan 1990",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 60),
                              child: Text(
                                "by Pidi Baiq",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 197, 196, 196),
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 100),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ]),
            ),
            Positioned(
                left: 40,
                top: 10,
                child: Container(
                  width: 100.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('images/anakrantau.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ],
        )
      ],
    );
  }
}
