import 'package:finalprojectdsc/widget/classjson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'countries.dart';

class Cows extends StatefulWidget {
  List continent;
  List<Displaydata> items;


  Cows(this.continent, this.items);

  @override
  _CowsState createState() => _CowsState();
}

class _CowsState extends State<Cows> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20, right: 20),
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              //  mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.4,
                    margin: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/${widget.continent[index]}.jpg"),
                            fit: BoxFit.scaleDown),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(23)),

                  ),
                  Text(
                    '${widget.continent[index]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Countries()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
