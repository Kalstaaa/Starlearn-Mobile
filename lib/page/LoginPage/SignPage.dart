import 'package:flutter/material.dart';
import 'package:project_library/widget/LogAppbar.dart';

class SignPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [Padding(padding: EdgeInsets.only(top: 40)),
            LAppBar(),
            Container(
              child: Text(
                "Selamat datang di Project Slave\ndatang di Project Slave",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Image.asset('images/1.png'),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                      onPressed: () {
                         Navigator.pushNamed(context, "login");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 125, 171, 251),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13), 
                        ),
                      ),
                      child: Text("Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 21
                        ),
                      ), 
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "register");
                      },
                      child: 
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),           
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "onboard");
              },
              child: Text(
                "Continue as a guest",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 95, 175, 255),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







      // bottomNavigationBar: CustomLineIndicatorBottomNavbar(
      //               selectedColor: const Color.fromARGB(255, 243, 191, 33),
      //               unSelectedColor: Color.fromARGB(255, 255, 255, 255),
      //               backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      //               currentIndex: _selectedIndex,
      //               onTap: (index) {
      //               setState(() {
      //                   _selectedIndex = index;
      //               });
      //               },
      //               enableLineIndicator: true,
      //               lineIndicatorWidth: 3,
      //               indicatorType: IndicatorType.top,
      //               // gradient: LinearGradient(
      //               //   colors: kGradients,
      //               // ),

      //               customBottomBarItems: [
      //               CustomBottomBarItems(
      //                   label: 'Home',
      //                   icon: Icons.home,
      //               ),
      //               CustomBottomBarItems(
      //                   label: 'Account',
      //                   icon: Icons.account_box_outlined,
      //               ),
      //               CustomBottomBarItems(
      //                   label: 'Leaves', icon: Icons.calendar_today_outlined),
      //               CustomBottomBarItems(
      //                   label: 'Loyalty',
      //                   icon: Icons.card_giftcard_rounded,
      //               ),
      //               ],
      //           ),