import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/auth/signin.dart';
import 'package:oasispay/auth/verifymail.dart';
import 'package:oasispay/controllers/auth_state_controller.dart';
import 'package:oasispay/routes/app_route_names.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        title: const Text("Sign Up", style: TextStyle(fontSize: 24, color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView (
          children: [
            GetBuilder<AuthStateController>(
              builder: (controller) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Firstname",
                          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        onChanged: (value){
                          controller.updateFirstName(value);
                        },
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Lastname",
                          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        onChanged: (value){
                          controller.updateLastName(value);
                        },
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Email",
                            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value){
                          controller.updateEmail(value);
                        },
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Phonenumber",
                            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        keyboardType: TextInputType.phone,
                        onChanged: (value){
                          controller.updatePhoneNumber(value);
                        },
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Password",
                            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  controller.togglePassword();
                                },
                                icon: (controller.hidePassword) ? (const Icon(Iconsax.eye
                                , color: Colors.grey,)) : (const Icon(Iconsax.eye_slash, color: Colors.grey,))
                            )
                        ),
                        obscureText: controller.hidePassword,
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  controller.toggleConfirmPassword();
                                },
                                icon:(controller.hideConfirmPassword) ? (const Icon(Iconsax.eye, color: Colors.grey,)) : (const Icon(Iconsax.eye_slash, color: Colors.grey,))
                            )
                        ),
                        obscureText: controller.hideConfirmPassword,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: controller.checkBoxValue,
                              onChanged: (value){
                                controller.toggleCheckBoxValue();
                              }
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("I agree with the"),
                              TextButton(
                                  onPressed: (){
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
                                  },
                                  child: Text("Terms & Conditions" ,style: TextStyle(color: Colors.pink[100], fontWeight: FontWeight.bold),)
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 96,),
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
                              Get.toNamed(verifyemailscreen);
                            },
                            child: const Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),)
                        ),
                      ),
                      const SizedBox(height: 100,),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ?"),
                          TextButton(
                              onPressed: (){
                                Get.toNamed(loginscreen);
                              },
                              child: Text("Sign in" ,style: TextStyle(color: Colors.pink[100], fontWeight: FontWeight.bold),)
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
