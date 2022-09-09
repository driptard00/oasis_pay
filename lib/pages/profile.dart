import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/controllers/app_state_controller.dart';

class Profile extends StatelessWidget {
  Profile({ Key? key }) : super(key: key);

  final AppStateController _appStateController = Get.find<AppStateController>();


  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _appStateController.getUserApiCall();
    });
    
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
        title: const Text("Profile", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
      ),
      body: GetBuilder<AppStateController>(
        builder: (controller) {
          return (!controller.isLoading) ? 
          (
            Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 50,),
                    Container(
                      height: 120,
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: NetworkImage(controller.userInfo["avatar"]),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Positioned(
                              right: 10,
                              bottom: 10,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.pink[100]
                                ),
                                child: IconButton(
                                    onPressed: (){},
                                    icon: const Icon(Iconsax.edit, color: Colors.white,)
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextFormField(
                                  controller: controller.firstnameController,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      prefixIcon: Icon(Iconsax.profile_circle5, size: 30,),
                                      labelText: "Firstname",
                                      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextFormField(
                                  controller: controller.lastnameController,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      prefixIcon: Icon(Iconsax.profile_circle5, size: 30,),
                                      labelText: "Lasttname",
                                      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextFormField(
                                  controller: controller.emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      prefixIcon: Icon(Iconsax.message, size: 30,),
                                      labelText: "Email",
                                      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      enabled: false
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      prefixIcon: Icon(Iconsax.call, size: 30,),
                                      labelText: "Phone number",
                                      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                                  ),
                                ),
                              ),
                            ],
                          )
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
                            //     MaterialPageRoute(builder: (context)=> const VerifyEmail())
                            // );
                          },
                          child: const Text("Save", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
          ) : 
          (
            const Center(
              child: CircularProgressIndicator(),
            )
          );
        }
      )
    );
  }
}