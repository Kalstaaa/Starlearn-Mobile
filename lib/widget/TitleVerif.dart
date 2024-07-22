import 'package:flutter/material.dart';

class TitleVerif extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: [
          Text(
                    "Verification Code",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
        ],
      ),
    );
  }
}
