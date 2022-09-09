import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oasispay/controllers/app_state_controller.dart';
import 'package:oasispay/routes/app_route_names.dart';
import 'package:oasispay/screens/screenfour.dart';
import 'package:oasispay/screens/screenone.dart';
import 'package:oasispay/screens/screenthree.dart';
import 'package:oasispay/screens/screentwo.dart';
import 'package:iconsax/iconsax.dart';

class Holderpage extends StatelessWidget {
  Holderpage({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());
  
  final List<Widget> _screens = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    ScreenFour()
  ];


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.selectedScreenIndex],

          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 20,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: (){
                        controller.selectedScreenItem(0);
                      },
                    child: Icon(Iconsax.home, color: (controller.selectedScreenIndex == 0) ? (Colors.pink[100]) : (Colors.black), size: 25,),
                  ),
                  TextButton(
                      onPressed: (){
                        controller.selectedScreenItem(1);
                      },
                      child: Icon(Iconsax.chart ,color: (controller.selectedScreenIndex == 1) ? (Colors.pink[100]) : (Colors.black), size: 25,)
                  ),
                  const SizedBox(width: 80,),
                  TextButton(
                      onPressed: (){
                        controller.selectedScreenItem(2);
                      },
                      child: Icon(Iconsax.dollar_circle, color: (controller.selectedScreenIndex == 2) ? (Colors.pink[100]) : (Colors.black), size: 25,)
                  ),
                  TextButton(
                      onPressed: (){
                        Get.toNamed(settingscreen);
                      },
                      child: const Icon(Iconsax.setting, color: Colors.black, size: 25,)
                  ),
                ],
              ),
            )
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: (controller.selectedScreenIndex == 3) ? (Colors.pink[100]) : (Colors.black),
            onPressed: (){
              controller.selectedScreenItem(3);
            },
            child: const Icon(Icons.sync_alt, color: Colors.white,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      }
    );
  }
}
