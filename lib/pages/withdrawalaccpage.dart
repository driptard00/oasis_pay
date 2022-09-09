import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WithdrawalAccountPage extends StatefulWidget {
  const WithdrawalAccountPage({Key? key}) : super(key: key);

  @override
  State<WithdrawalAccountPage> createState() => _WithdrawalAccountPageState();
}

class _WithdrawalAccountPageState extends State<WithdrawalAccountPage> {
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
        title: const Text("Withdrawal Account", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("You have no withrawal accounts click the add button above to add an account", textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.black),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[100],
        child: const Icon(Icons.add, color: Colors.white, size: 20,),
        onPressed: (){},
      ),
    );
  }
}
