import 'package:flutter/material.dart';
import 'package:project_library/page/FavPage/favorite.dart';
import 'package:project_library/page/HomePage/notifikasi.dart';
import 'package:project_library/widget/ImagePopular.dart';


class HomePages {
  void methodFile1() {}
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233144),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "profile");
                          },
                            child: Image.asset(
                              "images/Screen 4.png",
                              fit: BoxFit.cover,
                              width: 60,
                              height: 60,
                            ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.notifications,
                              color: Colors.white, size: 40),
                          onPressed: () {
                            // Navigasi ke halaman notifikasi
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifikasi()),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite,
                              color: Colors.white, size: 40),
                          onPressed: () {
                            // Navigasi ke halaman fav
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Favorite()),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 5),
                          child: Text(
                            "Hello User!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50, // Tinggi input pencarian
                      width:
                          340, // Lebar input pencarian mengisi seluruh lebar layar
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(
                            255, 54, 71, 94), // Warna latar belakang input
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4), // Warna shadow
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 4), // Offset dari shadow (x, y)
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search by Book title, Author, Etc...',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 14.0),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    StartSlide(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
