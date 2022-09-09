import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 268,
              width: 320,
              child: Image.asset("img/expectation.png"),
            ),
            const Text("Coming Soon", style: TextStyle(fontSize: 40, fontFamily: "RobotoBold", color: Colors.black, fontWeight: FontWeight.bold),),
            const Text("The saving feature is coming soon to oasis pay just have a little patience with us.", textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
