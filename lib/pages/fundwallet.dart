import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class FundWallet extends StatefulWidget {
  const FundWallet({Key? key}) : super(key: key);

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
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
        title: const Text("Fund Wallet", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Text("How would you like to fund your wallet ?", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),),
            const SizedBox(height: 20,),
            Card(
              color: Colors.grey[50],
              child: ListTile(
                leading: Icon(Iconsax.card, color: Colors.pink[100], size: 25,),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Debit Card", style: TextStyle(fontSize: 15,),),
                    Text("Includes a 2.5% breaking fee", style: TextStyle(fontSize: 10),),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[100], size: 20,),
                horizontalTitleGap: 0,
                onTap: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
