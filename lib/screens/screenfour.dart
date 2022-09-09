import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oasispay/pages/friendPage.dart';
import 'package:oasispay/pages/transferpage.dart';
import 'package:oasispay/routes/app_route_names.dart';
import '../pages/withdrawalaccpage.dart';
import 'package:iconsax/iconsax.dart';


class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text("Payments", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
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
                leading: Icon(Iconsax.send_1, color: Colors.pink[100], size: 25,),
                title: const Text("Transfer", style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            leading: Icon(Icons.qr_code_scanner, color: Colors.pink.shade100,),
                            title: const Text("Scan to pay"),
                            onTap: (){},
                          ),
                          ListTile(
                            leading: Icon(Iconsax.profile_2user, color: Colors.pink.shade100,),
                            title: const Text("Send to oasis pal"),
                            onTap: (){

                            },
                          ),
                          ListTile(
                            leading: Icon(Iconsax.bank, color: Colors.pink.shade100,),
                            title: const Text("Send to bank"),
                            onTap: (){
                              Get.toNamed(transferscreen);
                            },
                          ),
                        ],
                      ),
                    )
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.mobile, color: Colors.pink[100], size: 25,),
                title: const Text("Buy Airtime", style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){},
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.document, color: Colors.pink[100], size: 25,),
                title: const Text("Bill Payments", style: TextStyle(fontSize: 15,),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){},
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.receive_square , color: Colors.pink[100], size: 25,),
                title: const Text("Withdraw", style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){
                  Get.toNamed(withdrawscreen);
                },
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Transfer to Oasis Pal", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                  InkWell(
                    child: Text("See all", style: TextStyle(fontSize: 12, color: Colors.pink.shade100, fontWeight: FontWeight.bold),),
                    onTap: (){
                      Get.toNamed(oasispalscreen);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
