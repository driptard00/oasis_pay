
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/pages/notification%20page.dart';
import 'package:oasispay/pages/profile.dart';
import 'package:oasispay/pages/withdrawalaccpage.dart';
import 'package:oasispay/routes/app_route_names.dart';
import '../auth/signin.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Iconsax.arrow_left, color: Colors.pink[100],size: 25,),
          onPressed: (){
            Navigator.pop(context);
      },
    ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Settings", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const NotificationPage())
                );
              },
              icon: Icon(Iconsax.notification, color: Colors.pink[100], size: 25,)
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.profile_circle, color: Colors.pink[100], size: 25,),
                title: const Text("Profile", style: TextStyle(fontSize: 15,),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){
                  Get.toNamed(profilescreen);
                },
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.bank

                  , color: Colors.pink[100], size: 25,),
                title: const Text("Withdrawal Accounts", style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const WithdrawalAccountPage()));
                },
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.cards, color: Colors.pink[100], size: 25,),
                title: const Text("Saved Cards", style: TextStyle(fontSize: 15,),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){},
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.logout, color: Colors.pink[100], size: 25,),
                title: const Text("Logout", style: TextStyle(fontSize: 15,),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      title: const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),),
                      content: const Text("Are you sure you want to logout ?", style: TextStyle(fontSize: 12),),
                      actions: [
                        TextButton(
                            onPressed: (){
                              Get.toNamed(loginscreen);
                            },
                            child: const Text("Yes", style: TextStyle(color: Colors.pink),),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text("No", style: TextStyle(color: Colors.pink),),
                        ),
                      ],
                    );
                  });
                },
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Oasispay.Jehtad Technologies.v1.0.0", textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
