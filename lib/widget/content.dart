import 'package:finalprojectdsc/views/countries.dart';
import 'package:flutter/material.dart';

class Gesturecow extends StatelessWidget {
 // الكلاس ده مظبطتش لما استدعيتها من هنا ....لذلك خدتها كوبي بست وحطتها في صفحة (cow)

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: 50,
          margin:EdgeInsets.all(1) ,

          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assest/1.jpg"),
          fit: BoxFit.fill) ,
              color: Colors.red, borderRadius: BorderRadius.circular(23)),

          child: Center(child: Text('',style: TextStyle(color: Colors.amber,fontSize: 30,fontWeight: FontWeight.bold),)),
        ),
        onTap: () {
          Navigator.push(

            context,
            MaterialPageRoute(builder: (context) => Countries()),
          );
        },
      ),
    );
  }
}
