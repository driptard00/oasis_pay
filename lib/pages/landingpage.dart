import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oasispay/routes/app_route_names.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[100],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 150,),
                SizedBox(
                  height: 268,
                  width: 320,
                  child: Image.asset("img/kingdom-oasis.png"),
                ),
                const Text('OASIS PAY', style: TextStyle(fontSize: 40, fontFamily: "RockNRollOne", color: Colors.white),),
                const SizedBox(height: 103,),
                const Text("The Platform For Smooth And Easy Transactions", textAlign: TextAlign.center,style: TextStyle(fontSize: 24, fontFamily: "PTSerif", color: Colors.white),),
                const SizedBox(height: 144,),
                SizedBox(
                  height: 55,
                  width: 345,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: (){
                        Get.toNamed(loginscreen);
                      },
                      child: Text("Get Started", style: TextStyle(color: Colors.pink[100], fontSize: 17, fontWeight: FontWeight.bold),)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
