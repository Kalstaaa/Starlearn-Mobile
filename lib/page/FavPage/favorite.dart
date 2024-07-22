import 'package:flutter/material.dart';
import 'package:project_library/widget/FavWidget/appbar.dart';
import 'package:project_library/widget/FavWidget/card_favorite.dart';


class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          FavoriteAppbar(), 
          CardFavorite(),
        ],
      )),
    );
  }
}
