import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerBook extends StatelessWidget {
  const BannerBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned(
              child: Container(
            width: 150.0,
            height: 250.0,
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
    );
  }
}
