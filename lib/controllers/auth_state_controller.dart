import 'package:get/get.dart';

class AuthStateController extends GetxController {

  String _firstname = "";  
  String _lastname = "";  
  String _phonenumber = "";  
  String _password = "";  
  String _confirmpassword = "";  
  String _email = ""; 
  bool _checkBoxValue = true;  
  bool _hidePassword = true;  
  bool _hideConfirmPassword = true;  


  //GETTERS
  String get firstname => _firstname;
  String get lastname => _lastname;
  String get phonenumber => _phonenumber;
  String get password => _password;
  String get confirmpassword => _confirmpassword;
  String get email => _email;
  bool get checkBoxValue => _checkBoxValue;
  bool get hidePassword => _hidePassword;
  bool get hideConfirmPassword => _hideConfirmPassword;


  //SETTERS
  updateFirstName (value){
    _firstname = value;
    update();
  }

  updateLastName (value){
    _lastname = value;
    update();

  }

  updateEmail (value){
    _email = value;
    update();

  }  

  updatePassword (value){
    _password = value;
    update();

  }  

  updateConfirmPassword (value){
    _confirmpassword = value;
    update();

  }

  updatePhoneNumber (value){
    _phonenumber = value;
    update();

  }

  togglePassword (){
    _hidePassword = !_hidePassword;
    update();

  }

  toggleConfirmPassword (){
    _hideConfirmPassword = !_hideConfirmPassword;
    update();

  }

  toggleCheckBoxValue (){
    _checkBoxValue = !_checkBoxValue;
    update();

  }
}