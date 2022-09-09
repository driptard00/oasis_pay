import 'package:flutter/material.dart';
import 'package:oasispay/routes/app_route_names.dart';
import 'package:get/get.dart';
import 'package:oasispay/routes/app_routes.dart';

var initialRoute = splashscreen;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Oasis Pay",
      theme: ThemeData(
        fontFamily: "Roboto" 
      ),
      initialRoute:  initialRoute,
      getPages: getPages
    );
  }
}