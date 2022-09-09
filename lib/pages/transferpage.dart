import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {

  int _selectedItem = 0;
  final List<String> _items = [
    "Zenith Bank", "Access Bank", "Jaiz Bank", "Wema Bank", "United bank of africa", "Gt Bank"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.pink[100],size: 25,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("Transfer", style: TextStyle(fontSize: 20, fontFamily: "RockNRollOne", color: Colors.black),),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView   (
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            style: const TextStyle(fontSize: 12),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter Amount",
                                labelStyle: TextStyle(fontSize: 12),
                                floatingLabelBehavior: FloatingLabelBehavior.never
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        DropdownButtonFormField(
                            decoration: const InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              border: OutlineInputBorder(),
                              labelText: "Select Bank",
                              labelStyle: TextStyle(fontSize: 12),
                            ),
                            onChanged: (value){
                              setState(() {
                                if(value != null){

                                }
                              });
                            },
                            items: _items.map((eachBank) {
                              return DropdownMenuItem(
                                child: Text(eachBank, style: const TextStyle(fontSize: 12),),
                                value: eachBank,
                              );
                            }).toList()
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            style: const TextStyle(fontSize: 12),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter Account Number",
                                labelStyle: TextStyle(fontSize: 12),
                                floatingLabelBehavior: FloatingLabelBehavior.never
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 70,
                          child: TextFormField(
                            style: const TextStyle(fontSize: 12),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter description",
                                labelStyle: TextStyle(fontSize: 12),
                                floatingLabelBehavior: FloatingLabelBehavior.never
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 50,
                          width: 380,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100]
                              ),
                              onPressed: (){},
                              child: const Text("Proceed", style: TextStyle(fontSize: 15),)
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
    );
  }
}
