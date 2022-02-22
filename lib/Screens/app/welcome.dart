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
                child: Text(
                    "แต่อดีตจนถึงปัจจุบัน ไม่ว่าผ่านไปกี่ยุคกี่สมัย วัด ก็ยังเป็นศูนย์รวมจิตใจของคนไทย ไม่ว่าเราจะไปที่ไหน ชีวิตประจำวัดของเราก็จะมักเกี่ยวข้องกับวัดอยู่เสมอ วันนี้เราจึจะพามารู้จักกับวัดในจังหวัดศรีสะเกษ สำหรับสายเที่ยวก็ได้ สายบญก็ดี แวะไปเที่ยว ไหว้พระ และ ทำบุญ ถ่ายรูปสวยๆ "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
