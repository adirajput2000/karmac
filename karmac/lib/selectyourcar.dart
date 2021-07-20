import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  Firebase.initializeApp();
}

class selectyourcar extends StatefulWidget {
  const selectyourcar({Key? key}) : super(key: key);

  @override
  _selectyourcarState createState() => _selectyourcarState();
}

class _selectyourcarState extends State<selectyourcar> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => selectyourcar())),
            ),
          ),
          title: Text('Select your Car'),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection("ProductData").snapshots(),
          builder: (context, snapshot) {
            return !snapshot.hasData
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      QueryDocumentSnapshot<Object?> data =
                          snapshot.data!.docs[index];
                      return Container(
                        child: ListTile(
                          title: data['CarModels'],
                        ),
                      );
                    },
                  );
          },
        ));
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
      child: Center(
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
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: IconButton(
                icon: Icon(Icons.search_rounded, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget PostUI(String brandname, String logo) {
    return new Card(
      elevation: 10.0,
      margin: EdgeInsets.all(10.0),
      child: new Container(
        color: Colors.white,
        padding: new EdgeInsets.all(14.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              brandname,
              style: TextStyle(color: Colors.white),
            ),
            new Text(logo)
          ],
        ),
      ),
    );
  }
}
