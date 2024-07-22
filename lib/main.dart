 import 'package:flutter/material.dart';
import 'package:project_library/page/DetailPage/detail_book.dart';
import 'package:project_library/page/DetailPage/page2.dart';
import 'package:project_library/page/FavPage/favorite.dart';
import 'package:project_library/page/HomePage/notifikasi.dart';
import 'package:project_library/page/LoginPage/LoginPage.dart';
import 'package:project_library/page/LoginPage/RegisterPage.dart';
import 'package:project_library/page/LoginPage/SignPage.dart';
import 'package:project_library/page/LoginPage/VerificationPage.dart';
import 'package:project_library/page/HomePage/homepage_screen.dart';
import 'package:project_library/page/HomePage/introduction.dart';
import 'package:project_library/page/ProfilePage/profile_page.dart';
import 'package:project_library/page/YoBook/YourBook.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 33, 56, 87),
      ),
      initialRoute: "sign", 
      routes: {
        "sign": (context) =>SignPage(), 
        "login": (context) =>LoginPage(), 
        "register": (context) =>RegisterPage(), 
        "verif": (context) =>VerifField(), 
        "home": (context) =>Homepage(), 
        "onboard": (context) =>IntroScreen(), 
        "detail": (context) =>DetailBook(),
        "fav": (context) =>Favorite(),
        "notif": (context) =>Notifikasi(),
        "p2": (context) =>page2(),
        "yb": (context) =>YourBook(),
        "profile": (context) =>ProfilePage(),
      },
    );
  }
}
