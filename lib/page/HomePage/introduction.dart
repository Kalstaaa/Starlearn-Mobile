import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_library/page/HomePage/homepage_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Halo, sobat StarLearn.',
        body: 'Apakah kalian ingin meminjam buku di StarLearn?',
        footer: SizedBox(
          height: 45,
          width: 300,
        ),
        image: Center(
          child: Image.asset('images/Screen 3.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
         bodyTextStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.white, 
        ),
        )),
        PageViewModel(
        title: 'Sobat membaca buku itu penting tau',
        body: 'Dengan membaca, sobat bisa menyerap pengetahuan, dan memperluas wawasan.',
        footer: SizedBox(
          height: 45,
          width: 300,
        ),
        image: Center(
          child: Image.asset('images/Screen 1.png'),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set title text color to white
          ),
          bodyTextStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.white, // Set body text color to white
          ),
        ),
      ),
        PageViewModel(
          title: 'Baca aku ya sobat',
          body: 'Pinjam dan baca buku sekarang, sebelum aku dipinjam orang lain',
          footer: SizedBox(
            height: 45,
            width: 300,
          ),
          image: Center(
            child: Image.asset('images/Screen 2.png'),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color to white
            ),
             bodyTextStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.white, // Set body text color to white
          ),
          ),
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Color.fromARGB(255, 0, 0, 0),
            activeSize: Size.square(20),
            activeColor: Color.fromARGB(255, 255, 255, 255),
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20, color: Colors.white), // Set text color to white
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: Colors.white), // Set text color to white
          ),
          showNextButton: true,
          next: const Icon(
          Icons.arrow_forward,
          size: 25,
          color: Colors.white, // Set icon color to white
        ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Homepage()));
  }
}
