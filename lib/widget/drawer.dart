import 'package:finalprojectdsc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class drawer extends StatelessWidget {
  final Function? onThemeChange;

  drawer({ this.onThemeChange});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

             Padding(
               padding : const EdgeInsets.all(12.0),
               child: ListTile(
                leading: Text('Dark Mode',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,height: 1),),
                 trailing: Switch(
                     value: isDark,
                     onChanged: (val) {
                       onThemeChange!();
                     }),
               ),
             ),

          ],
        ),
      ),
    );
  }
}
