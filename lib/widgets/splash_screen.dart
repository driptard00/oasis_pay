import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:oasispay/pages/landingpage.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.pink.shade100,
      centered: true,
      splash: const Text("OASIS PAY", style: TextStyle(color: Colors.white, fontSize: 40, fontFamily: "RockNRollOne"),),
      nextScreen: const LandingPage(),
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}