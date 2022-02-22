import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/app/namewat.dart';
import 'package:flutter_auth/Screens/app/welcome.dart';

class DrawerManu extends StatefulWidget {
  @override
  _DrawerManuState createState() => _DrawerManuState();
}

class _DrawerManuState extends State<DrawerManu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("ไพสิน ชิณวงศ์"),
            accountEmail: Text("pram112299@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(
                size: 50.0,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.cottage_rounded),
            title: const Text('หน้าแรก'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            },
          ),
          ListTile(
            leading: Icon(Icons.art_track),
            title: const Text('รายชื่อวัดศักดิ์สิทธิ์'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => namewat()));
            },
          ),
        ],
      ),
    );
  }
}
