import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Image.asset(
                    'images/logo1.png',
                    height: 70,
                    width: 180,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/carpic.jpg'),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 50, 10),
                  child: Text(
                    'Enter phone number for Verification',
                    style: TextStyle(color: Color(0xffA4CE39), fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                child: Text(
                  'This number will be used for all service related communication you shall receive an SMS with code for verification',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              textfield(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => otpField()));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xffA4CE39)),
                  child: Text('Send OTP',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(32, 10, 32, 5),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                          text:
                              'By continuing, you agree that you have read and accepted our ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                                text: 'T&Cs',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                              text: ' and ',
                            ),
                            TextSpan(
                                text: 'privacy policies',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                              text: '.',
                            ),
                          ]),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget textfield() {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff1d1d1d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Enter a phone number",
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(
              "(+91)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
