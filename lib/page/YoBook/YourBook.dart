import 'package:flutter/material.dart';
import 'package:project_library/page/DetailPage/page2.dart';

class YourBook extends StatelessWidget {
  const YourBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233144),
      appBar: AppBar(
        title: Text('Your Book'),
        actions: [
          IconButton(
          onPressed: () {
            // Tambahkan logika untuk menangani tombol lonceng di sini
          },
          icon: Stack(
            children: <Widget>[
              Icon(Icons.notifications), // Ikon lonceng
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
  padding: EdgeInsets.all(10),
  child: Stack(
    children: [
      Card(
        color: const Color(0xFF2E435F),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.0,
              height: 90.0,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('images/onepiece.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10), // Spacer horizontal
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anak Rantau',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'by Tere Liye',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),



              Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // Tambahkan logika navigasi ke layar lain di sini
                  // Contoh:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page2()),
                  );
                },
                child: Stack(
                children: [
                  Card(
                    color: const Color(0xFF2E435F),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 70.0,
                          height: 90.0,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/Dilan.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // Spacer horizontal
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dilan 1990',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'by Pidi Baiq',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 5),
                              Icon(
                                Icons.qr_code,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),

                 Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Card(
        color: const Color(0xFF2E435F),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  Container(
                    width: 70.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('images/Dilan.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Spacer horizontal
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Si Juki',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'by Faza Meonk',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Icon(
                          Icons.qr_code,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
