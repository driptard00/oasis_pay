import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oasispay/controllers/auth_state_controller.dart';
import 'package:oasispay/routes/app_route_names.dart';

class VerifyEmail extends StatelessWidget {
  VerifyEmail({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.pink[100],size: 25,),
          onPressed: (){
           Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const SizedBox(height: 100,),
            const Text("Account Verification", style: TextStyle(fontSize: 40, color: Colors.black, fontFamily: "RobotoBold"),),
            const SizedBox(height: 10,),
            const Text("For your security, we want to make sure it's really you", style: TextStyle(fontSize: 15, color: Colors.black),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Enter Code", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                TextButton(
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
                    },
                    child: Text("Resend Code" ,style: TextStyle(color: Colors.pink[100], fontWeight: FontWeight.bold),)
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 10,),
            const Text("We sent a mail with a 6-digit code to your email akintadeseun@gmail.com", textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.black),),
            const SizedBox(height: 20,),

            SizedBox(
              height: 55,
              width: 345,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink[100]
                  ),
                  onPressed: (){
                    Get.toNamed(loginscreen);     
                  },
                  child: const Text("Verify", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
