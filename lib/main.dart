import 'package:finalprojectdsc/splash.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());
bool isDark = false;
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: " Earth Map",
      home: Splashscreen(
        onThemeChange: () {
          print('x $isDark');
          isDark = !isDark;
          setState(() {});
        },
      ),
    );
  }
}


