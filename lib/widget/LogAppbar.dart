import 'package:flutter/material.dart';

class LAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "S",
                  style: TextStyle(
                    fontSize: 70,
                    color: Color.fromARGB(255, 125, 171, 251),
                    fontWeight: FontWeight.w400
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "tar",
                    style: TextStyle(
                      fontSize: 45,
                      color: Color.fromARGB(255, 125, 171, 251),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Learn",
                    style: TextStyle(
                      fontSize: 45,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
