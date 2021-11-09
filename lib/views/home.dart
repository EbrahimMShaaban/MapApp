import 'dart:convert';
import 'package:finalprojectdsc/views/cows.dart';
import 'package:finalprojectdsc/widget/classjson.dart';
import 'package:finalprojectdsc/widget/drawer.dart';
import 'package:finalprojectdsc/widget/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  final Function? onThemeChange;

  Home({this.onThemeChange});
  List<String> continent = [
    'Africa',
    'Asia',
    'Antarctica',
    'Oceania',
    'Europe',
    'North America',
    'South America'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        shadowColor: Colors.amberAccent,
        title: Center(
            child: Text(
          'contient',
          style: TextStyle(fontSize: 30),
        )),
      ),
      drawer: drawer(
        onThemeChange: onThemeChange,
      ),
      bottomNavigationBar: NavBar(
        onThemeChange: onThemeChange,
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text('${data.error}'));
          }
          else if (data.hasData) {
            var items = data.data as List<Displaydata>;
            return Cows(continent,items);
          }
          else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

 // List data;

  Future<List<Displaydata>> ReadJsonData() async {
    var jsondata = await rootBundle.loadString('assest/s/data.json');
    Map data = json.decode(jsondata)["countries"];
    Map continents = json.decode(jsondata)["continents"];
    List<Displaydata> list  = [];
    data.forEach((key, value) {list.add(Displaydata.fromJson(value,continents));});
    print(list[0].name);
    return list;
  }
}

