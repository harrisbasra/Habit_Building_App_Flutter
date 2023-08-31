import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'Log_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: AnimatedSplashScreen.withScreenFunction(
        splash: Center(
          child: Container(
            color: Color.fromRGBO(59, 29, 44, 1),
            width: 1000,
            height: 1000,
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Center(child: Image.asset('assets/images/img.png')),
            )
          ),
        ),
        screenFunction: () async {
          return log_in();
        },
        duration: 1700,
        splashIconSize: 10000.0,
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: PageTransitionType.rightToLeftWithFade,
        animationDuration: Duration(seconds: 1),
      ),
    );
  }
}
