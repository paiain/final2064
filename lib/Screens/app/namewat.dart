import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:http/http.dart' as Http;

class namewat extends StatefulWidget {
  @override
  _namewatState createState() => _namewatState();
}

class _namewatState extends State<namewat> {
  var jsonData;
  Map<String, int> data = {};
  Future<String> _GetAPI() async {
    var response = await Http.get(Uri.parse(
        'https://numvarn.github.io/resume/asset/files/templeprofile.json'));
    jsonData = jsonDecode(utf8.decode(response.bodyBytes));

    print(jsonData);

    return "ok";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('วัดศักดิ์สิทธิ์ในจังหวัดศรีสะเกษ'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _GetAPI(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Text("hello");
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
