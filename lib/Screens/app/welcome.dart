import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/app/manu.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
      ),
      drawer: DrawerManu(),
      body: Background(
        child: ListView(
          children: <Widget>[
            Card(
              child: Image.network('https://shorturl.asia/MqPyN'),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.all(10),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Align(
                child: Text(
                  "วัดศักดิ์สิทธิ์ในจังหวัดศรีสะเกษมาเเล้วต้องเเวะ ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: Align(
                child: Text("ข้อความเกริน................"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
