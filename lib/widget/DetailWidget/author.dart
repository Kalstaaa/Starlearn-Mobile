import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthorBook extends StatelessWidget {
  const AuthorBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage("images/pidibaiq.png"),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Pidi Baiq",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "p2");
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                ),
                child: Text("Borrow Now")),
          )
        ],
      ),
    );
  }
}
