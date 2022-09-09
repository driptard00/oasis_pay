import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oasispay/services/api_services.dart';

class AppStateController extends GetxController {
  int _selectedScreenIndex = 0;
  bool _hideBalance = false;
  bool _isLoading = false;
  Map<dynamic, dynamic> _userInfo = {};
  Map<dynamic, dynamic> _musicInfo = {};

  final List<Map<String, dynamic>> _transactions = [
    {
      'name': "Spotify Payment",
      'time': "1:00",
      "amount": "-450"
    },
    {
      'name': "Mtn Recharge",
      'time': "12:40",
      "amount": "-1000"
    },
    {
      'name': "Akintade oluwaseun",
      'time': "14:00",
      "amount": "+4500"
    },
    {
      'name': "Spotify Payment",
      'time': "1:00",
      "amount": "-450"
    },
    {
      'name': "Spotify Payment",
      'time': "1:00",
      "amount": "-450"
    },
  ];

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();


  //GETTERS
  int get selectedScreenIndex => _selectedScreenIndex;
  bool get hideBalance => _hideBalance;
  bool get isLoading => _isLoading;
  Map get userInfo => _userInfo;
  Map get musicInfo => _musicInfo;
  List get transactions => _transactions;
  TextEditingController get firstnameController => _firstnameController;
  TextEditingController get lastnameController => _lastnameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phonenumberController => _phonenumberController;



  //SETTERS
  selectedScreenItem (value){
    _selectedScreenIndex = value;
    update();
  }

  toggleBalance (){
    _hideBalance = !_hideBalance;
    update();
  }

  updateIsLoading (bool value){
    _isLoading = value;
    update();
  }

  updateUserInfo (value){
    _userInfo = value;
    update();
  }

  updateMusicInfo (value){
    _musicInfo = value;
    update();
  }






  Future<void> getUserApiCall() async{
    updateIsLoading(true);

    var responseData = await ApiServices.getUserDetails("1", "https://reqres.in/api/users/");
    int resCode = responseData!.statusCode;
    var resBody = responseData.body;

    if(resCode == 200){
      updateIsLoading(false);

      var decodedBody = jsonDecode(resBody);
      updateUserInfo(decodedBody["data"]);

      _firstnameController.text = _userInfo["first_name"];
      _lastnameController.text = _userInfo["last_name"];
      _emailController.text = _userInfo["email"];

    }

    update();
  }

}