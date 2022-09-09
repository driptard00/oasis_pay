import 'package:get/get.dart';
import 'package:oasispay/auth/forgotpassword.dart';
import 'package:oasispay/auth/signin.dart';
import 'package:oasispay/auth/signup.dart';
import 'package:oasispay/auth/verifymail.dart';
import 'package:oasispay/pages/friendPage.dart';
import 'package:oasispay/pages/fundwallet.dart';
import 'package:oasispay/pages/landingpage.dart';
import 'package:oasispay/pages/notification%20page.dart';
import 'package:oasispay/pages/profile.dart';
import 'package:oasispay/pages/settingspage.dart';
import 'package:oasispay/pages/transferpage.dart';
import 'package:oasispay/pages/withdrawalaccpage.dart';
import 'package:oasispay/routes/app_route_names.dart';
import 'package:oasispay/screens/holderpage.dart';
import 'package:oasispay/widgets/splash_screen.dart';

List<GetPage> getPages = [

  // ============== INITIAL ROUTE NAME ============
  GetPage(name: splashscreen, page: ()=> SplashScreen()),

  // ============== INTROSCREEN ROUTE NAME ============
  GetPage(name: introscreen, page: ()=> LandingPage()),

  // ============== AUTH ROUTE NAME ============
  GetPage(name: loginscreen, page: ()=> SignInPage()),
  GetPage(name: signupscreen, page: ()=> SignUpPage()),
  GetPage(name: forgotpasswordscreen, page: ()=> ForgotPass()),
  GetPage(name: verifyemailscreen, page: ()=> VerifyEmail()),


  // ============== APP ROUTE NAME ============
  GetPage(name: holderscreen, page: ()=> Holderpage()),
  GetPage(name: settingscreen, page: ()=> Settings()),
  GetPage(name: profilescreen, page: ()=> Profile()),
  GetPage(name: withdrawscreen, page: ()=> WithdrawalAccountPage()),
  GetPage(name: fundwalletscreen, page: ()=> FundWallet()),
  GetPage(name: oasispalscreen, page: ()=> FriendsPage()),
  GetPage(name: notificationpage, page: ()=> NotificationPage()),
  GetPage(name: transferscreen, page: ()=> TransferPage()),

];