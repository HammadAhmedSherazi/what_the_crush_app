import 'dart:async';

import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/LandingScreen/view/Landing.dart';



class SplashServices {
  void Splash(BuildContext, context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => LandingScreen())));
  }
}
