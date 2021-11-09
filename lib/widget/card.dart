import 'package:finalprojectdsc/views/countries.dart';
import 'package:finalprojectdsc/views/cows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Countrycard extends StatelessWidget {
  Widget build(BuildContext context){
    return Card(color: Colors.amber,
      elevation: 20,
      margin: EdgeInsets.all(6),
      shadowColor: Colors.deepOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,

      child: Container(
        height: MediaQuery.of(context).size.height*0.08,
        //width: 20,
        margin: EdgeInsets.only(top: 10,),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('text',style: TextStyle(fontSize: 25),),
                IconButton(onPressed: (){}, icon: Icon(Icons.star))
                ],
            ),
          ),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> Countries()));}
        ),

        //color: Colors.red,
      ),
    );
  }
}
