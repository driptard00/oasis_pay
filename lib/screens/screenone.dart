import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:oasispay/controllers/app_state_controller.dart';
import 'package:oasispay/pages/fundwallet.dart';


class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.find<AppStateController>();

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _appStateController.getUserApiCall();
    });

    return GetBuilder<AppStateController>(
      builder: (controller) {
        return (!controller.isLoading) ? 
        (
          DefaultTabController( 
          length: 5,
          child: Scaffold(
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 20, right: 20, left:20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hello, Oluwaseun",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "RockNRollOne"
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: const Icon(Icons.qr_code_rounded),
                            ),
                            onTap: (){},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: (controller.userInfo["avatar"] != null) ?
                              NetworkImage(controller.userInfo["avatar"]) :
                              const AssetImage("img/defaultprofile.jfif") as ImageProvider
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, top:40,right: 10),
                        height: 200,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink.shade100
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Available Balance", style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: "RobotoBold"),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:  [
                                    const Image(
                                      image: AssetImage("img/naira.png"),
                                      width: 25,
                                      height: 25,
                                      color: Colors.white,
                                      ),
                                    Text(
                                      (controller.hideBalance)?("XXXX.XX"):("0.00"),
                                    style: const TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                IconButton(
                                  onPressed: (){
                                    controller.toggleBalance();
                                  },
                                  icon: Icon((controller.hideBalance)?(Iconsax.eye_slash):(Iconsax.eye)),
                                  color: Colors.white,
                                  )
                              ],
                            ),
                          ],
                        ),
                      ),
                        Positioned(
                          bottom: 0,
                          right: 160,
                          child:SizedBox(
                            height: 60,
                            width: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                                )
                              ),
                              onPressed: (){
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
                                          leading: Icon(Iconsax.wallet, color: Colors.pink.shade100,),
                                          title: const Text("Fund wallet"),
                                          onTap: (){},
                                        ),
                                        ListTile(
                                          leading: Icon(Iconsax.receive_square, color: Colors.pink.shade100,),
                                          title: const Text("Withdraw"),
                                          onTap: (){},
                                        ),
                                      ],
                                    ),
                                  )
                                );
                              },
                              child: const Icon(Iconsax.add, color: Colors.black,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Recent Transactions", style: TextStyle(fontSize: 20, fontFamily: "RobotoBold", color: Colors.black),),
                      InkWell(
                        child: Text("See all", style: TextStyle(fontSize: 12, color: Colors.pink.shade100, fontWeight: FontWeight.bold),),
                        onTap: (){},
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                      TabBar(
                        unselectedLabelColor: Colors.black,
                        isScrollable: true,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                          tabs: const [
                            Tab(text: "Today",),
                            Tab(text: "Yestarday",),
                            Tab(text: "This week",),
                            Tab(text: "This Month",),
                            Tab(text: "Last Month",),
                          ],
                      ),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              child:ListView.separated(
                                itemBuilder: ((context, index) {
                                    return SizedBox(
                                    height: 80,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[50],
                                      child: Center(
                                        child: ListTile(
                                          leading: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.grey
                                            ),
                                          ),
                                          title: Text(controller.transactions[index]["name"], style: const TextStyle(fontSize: 15,color: Colors.black),),
                                          subtitle: Text(controller.transactions[index]["time"], style: const TextStyle(fontSize: 12,color: Colors.black),),
                                          trailing: Text(
                                            (controller.hideBalance)?("xxx"):(controller.transactions[index]["amount"])
                                            , style: const TextStyle(fontSize: 12,color: Colors.green, fontWeight: FontWeight.bold),),
                                          onTap: (){},
                                        ),
                                      ),
                                    ),
                                  );
                                }), 
                                separatorBuilder: (context, int index){
                                  return Container(
                                    height: 10,
                                    color: Colors.white,
                                  );
                                }, 
                                itemCount: controller.transactions.length
                                )
                            ),
                            Container(
                              color: Colors.blue,
                            ),
                            Container(
                              color: Colors.green,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      )
                ],
              ),
            ),
          ),
        )
        ) : 
        (
          const Center(
            child: CircularProgressIndicator(),
          )
        );
      }
    );

  }
}
