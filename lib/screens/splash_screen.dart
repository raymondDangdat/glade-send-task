import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:glade_two/screens/screens.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset("assets/icon/glade.png", height: 200, width: 200,),
          nextScreen: NavScreen(),
          splashTransition: SplashTransition.rotationTransition,
          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Color.fromRGBO(103, 64, 126, 1)),
    );
  }
}
