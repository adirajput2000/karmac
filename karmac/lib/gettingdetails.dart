import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmac/selectyourcar.dart';

class GettingDetails extends StatefulWidget {
  const GettingDetails({Key? key}) : super(key: key);

  @override
  _GettingDetailsState createState() => _GettingDetailsState();
}

class _GettingDetailsState extends State<GettingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
                child: Image.asset(
                  'images/logo1.png',
                  height: 70,
                  width: 180,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                'Please Fill Your Details',
                style: TextStyle(
                    color: Color(0xffA4CE39),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: textfield('Enter your Phone Number'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: textfield('Enter your Name'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: textfield('Enter your Emailid'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => selectyourcar()));
              },
              child: Text(
                'SUBMIT',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(primary: Color(0xffA4CE39)),
            )
          ],
        )),
      ),
    );
  }

  Widget textfield(String texts) {
    String text;
    text = texts;
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
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      ),
    );
  }
}
