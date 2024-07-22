import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class VerifField extends StatefulWidget {
  @override
  _VerifFieldState createState() => _VerifFieldState();
}

class _VerifFieldState extends State<VerifField> {
  List<String> _otp = ['', '', '', '', '']; 
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(5, (index) => FocusNode());
    _controllers = List.generate(5, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
  void _showVerificationDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(255, 32, 53, 81),
        title: Container(
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
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min, 
              children: <Widget>[
                Image(
                  image: AssetImage('images/tang.png'), 
                  width: 130,
                  height: 110,
                ),
              ],
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 125, 171, 251),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Ok Gas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
    Color _getBorderColor() {
  bool allBoxesFilled = _otp.every((String value) => value.isNotEmpty);
  return allBoxesFilled ? Color.fromARGB(255, 171, 195, 227) : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  5,
                  (index) => SizedBox(
                    width: 57,
                    child: TextField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      obscureText: true, 
                      onChanged: (value) {
                        _otp[index] = value;
                        if (value.isNotEmpty && index < 4) {
                          _focusNodes[index + 1].requestFocus();
                        } else if (value.isEmpty && index > 0) {
                          _focusNodes[index - 1].requestFocus();
                        }
                        setState(() {});
                      },
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                      decoration: InputDecoration(
                        counterText: "",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: _getBorderColor(), width: 2.0), 
                          borderRadius: BorderRadius.circular(10.0), 
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: _getBorderColor(), width: 2.0), 
                          borderRadius: BorderRadius.circular(10.0), 
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0), 
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Slow Hand? ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(context, "login");
                      },
                      child: Text(
                        "ReBitch!",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 95, 175, 255),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),   
              ElevatedButton(
                onPressed: () {
                  String enteredOTP = _otp.join();
                  if (enteredOTP == '12345') {
                    print('OTP VerifField successfully');
                    _showVerificationDialog();
                  } else {
                    print('Invalid OTP');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 125, 171, 251),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 130),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
