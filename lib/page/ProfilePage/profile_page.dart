import 'package:flutter/material.dart';
import 'dart:io';

import 'package:project_library/page/ProfilePage/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String _username;
  late String _email;
  late String _password;
  late File _imageFile;

  @override
  void initState() {
    super.initState();
    _username = 'John Doe';
    _email = 'john.doe@example.com';
    _password = 'password';
    _imageFile = File('assets/IMG/IMG20221124110451.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF233144),
      ),
      backgroundColor: Color(0xFF233144),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
            SizedBox(height: 50,),
            CircleAvatar(
              radius: 75,
              backgroundImage: FileImage(_imageFile),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage(
                    username: _username,
                    email: _email,
                    password: _password,
                    imageFile: _imageFile,
                  )),
                );

                if (result != null && result is Map<String, dynamic>) {
                  setState(() {
                    _username = result['username'];
                    _email = result['email'];
                    _password = result['password'];
                    _imageFile = result['imageFile'];
                  });
                }
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 30),
            _buildTextWithUnderline('Username', _username),
            SizedBox(height: 30),
            _buildTextWithUnderline('Email', _email),
            SizedBox(height: 30),
            _buildTextWithUnderline('Nisn', _password),
          ],
        ),
      ),
    );
  }

  Widget _buildTextWithUnderline(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
