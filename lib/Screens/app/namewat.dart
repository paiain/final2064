import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';

import 'package:http/http.dart' as Http;

class namewat extends StatefulWidget {
  @override
  _namewatState createState() => _namewatState();
}

class _namewatState extends State<namewat> {
  var jsonData;
  List<TempleData> dataList = [];
  // ignore: non_constant_identifier_names
  Future<String> _GetData() async {
    var response = await Http.get(Uri.parse(
        'https://numvarn.github.io/resume/asset/files/templeprofile.json'));
    jsonData = json.decode(utf8.decode(response.bodyBytes));

    for (var data in jsonData) {
      TempleData news = TempleData(data['ชื่อ'], data['พระเกจิ']);
      dataList.add(news);
    }

    return 'ok';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายชื่อวัดภายในจังหวัดศรีสะเกษ'),
      ),
      body: Background(
          child: FutureBuilder(
        future: _GetData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Align(
                          child: Text(
                            '${"ชื่อวัด : " + dataList[index].name}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Align(
                          child: Text(
                            '${"พระเกจิ :" + dataList[index].monk}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Container(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}

class TempleData {
  String name;
  String monk;

  TempleData(
    this.name,
    this.monk,
  );
}
