import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/controllers/auth_state_controller.dart';
import 'package:oasispay/routes/app_route_names.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.put(AuthStateController());

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
        padding:const  EdgeInsets.all(20),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const SizedBox(height: 120,),
            const Text("Sign In", textAlign: TextAlign.center,style: TextStyle(fontSize: 32),),
            const SizedBox(height: 75,),
            GetBuilder<AuthStateController>(
              builder: (controller) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        onChanged: (value){
                          controller.updateEmail(value);
                        },
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Password",
                            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  controller.togglePassword();
                                },
                                icon: (controller.hidePassword) ? (const Icon(Iconsax.eye)) : (const Icon(Iconsax.eye_slash))
                            )
                        ),
                        obscureText: controller.hidePassword,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: (){
                              Get.toNamed(forgotpasswordscreen);
                            },
                            child:  const Text("Forgot Password ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 45,),
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
                              Get.toNamed(holderscreen);
                            },
                            child: const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                      ),
                      const SizedBox(height: 60,),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account ?"),
                          TextButton(
                              onPressed: (){
                                Get.toNamed(signupscreen);
                              },
                              child: Text("Sign Up" ,style: TextStyle(color: Colors.pink[100], fontWeight: FontWeight.bold),)
                          )
                        ],
                      )
                    ],
                  )
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
