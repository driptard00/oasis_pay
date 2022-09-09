import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        title: const Text("Notifications", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: const Center(
          child: Text("No notifications", style: TextStyle(fontSize: 12,),),
        ),
      ),
    );
  }
}
