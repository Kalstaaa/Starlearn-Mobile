import 'package:flutter/material.dart';
import 'package:project_library/widget/DetailWidget/appbar.dart';
import 'package:project_library/widget/DetailWidget/author.dart';
import 'package:project_library/widget/DetailWidget/banner_book.dart';
import 'package:project_library/widget/DetailWidget/synopsis.dart';


class DetailBook extends StatelessWidget {
  const DetailBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          DetailAppBar(),
          BannerBook(),
          SynopsisPage(),
          AuthorBook(),
        ],
      )),
    );
  }
}
