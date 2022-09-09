import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/controllers/auth_state_controller.dart';


class ForgotPass extends StatelessWidget {
  ForgotPass({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.find<AuthStateController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Iconsax.arrow_left, color: Colors.pink[100],size: 25,),
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
            const Text("Reset Password", style: TextStyle(fontSize: 40, color: Colors.black, fontFamily: "RobotoBold"),),
            const SizedBox(height: 10,),
            const Text("Please enter below the email you sign up with, We will send a verification code to the email to reset your password.", style: TextStyle(fontSize: 15, color: Colors.black),),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 55,
              width: 345,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context)=> const SignInPage())
                    // );
                  },
                  child: const Text("Send Code", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
