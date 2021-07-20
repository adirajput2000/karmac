import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmac/gettingdetails.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'loginpage.dart';

class otpField extends StatelessWidget {
  const otpField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pushReplacement(
                context, CupertinoPageRoute(builder: (context) => LoginPage())),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Image.asset(
                'images/logo1.png',
                height: 70,
                width: 180,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('images/carpic.jpg'),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 50, 10),
                child: Center(
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(32, 5, 32, 30),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'Enter the OTP sent to  ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: '+919773771289',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ),
                )),
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width - 60,
              fieldWidth: 40,
              otpFieldStyle: OtpFieldStyle(
                  borderColor: Colors.white, backgroundColor: Colors.white),
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(32, 5, 32, 30),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'Not Receive the OTP? ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: ' RESEND OTP',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => GettingDetails()));
              },
              style: ElevatedButton.styleFrom(primary: Color(0xffA4CE39)),
              child: Text('VERIFY & PROCEED',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ]),
        ),
      ),
    );
  }
}
