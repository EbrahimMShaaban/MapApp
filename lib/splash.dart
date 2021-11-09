import 'package:finalprojectdsc/views/home.dart';

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


class Splashscreen extends StatelessWidget {
  final Function? onThemeChange;

   Splashscreen({ this.onThemeChange}) ;
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Home(onThemeChange: onThemeChange ),
      imageSrc: 'assest/1.jpg',
      backgroundColor: Colors.black,
      imageSize: 300,
      speed: 20000,




    );
  }
}
