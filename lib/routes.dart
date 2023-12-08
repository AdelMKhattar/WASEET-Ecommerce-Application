
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/middleware/appmiddleware.dart';
import 'package:ecommerce_project/data/model/shop.dart';
import 'package:ecommerce_project/view/screen/Settings/settings.dart';
import 'package:ecommerce_project/view/screen/auth/checkemail.dart';
import 'package:ecommerce_project/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce_project/view/screen/auth/login.dart';
import 'package:ecommerce_project/view/screen/auth/resetpassword.dart';
import 'package:ecommerce_project/view/screen/auth/signup.dart';
import 'package:ecommerce_project/view/screen/auth/signupverifycode.dart';
import 'package:ecommerce_project/view/screen/auth/successresetpassword.dart';
import 'package:ecommerce_project/view/screen/auth/successsignup.dart';
import 'package:ecommerce_project/view/screen/auth/varificationcode.dart';
import 'package:ecommerce_project/view/screen/chooselanguage.dart';
import 'package:ecommerce_project/view/screen/home/home.dart';
import 'package:ecommerce_project/view/screen/home/homescreen.dart';
import 'package:ecommerce_project/view/screen/introscreen.dart';
import 'package:ecommerce_project/view/screen/onboarding.dart';
import 'package:ecommerce_project/view/screen/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';



List<GetPage<dynamic>>? routes=
[
  // GetPage(name: "/", page: ()=> const IntroScreen(),middlewares: [
  //   AppMiddleware(),
  // ]),
  GetPage(name: "/", page: ()=>const IntroScreen()),
  GetPage(name: Approutes.chooselanguage, page: ()=> const ChooseLanguage()),
  GetPage(name: Approutes.login, page: ()=> const Login()),
  GetPage(name: Approutes.onboarding, page: ()=> const OnBoarding()),
  GetPage(name: Approutes.signup, page: ()=> const Signup()),
  GetPage(name: Approutes.forgetpassord, page: ()=> const ForgerPassowrd()),
  GetPage(name: Approutes.varifycode, page: ()=> const VarificationCode()),
  GetPage(name: Approutes.resetpassword, page: ()=> const ResetPassword()),
  GetPage(name: Approutes.successresetpassword, page: ()=> const SuccessResetPassword()),
  GetPage(name: Approutes.successsignup, page: ()=> const SuccessSignup()),
  GetPage(name: Approutes.checkemail, page: ()=> const CheckEmail()),
  GetPage(name: Approutes.signupvarifycode, page: ()=> const SignUpVarifyCode()),
  GetPage(name: Approutes.home, page: ()=> const Home()),
  GetPage(name: Approutes.shops, page: ()=> const Shops()),
  GetPage(name: Approutes.settings, page: ()=> const Settings()),

];

// Map<String, Widget Function(BuildContext)> routess=
// {
//    Approutes.login:(context) => const Login(),
//    Approutes.onboarding:(context)=> const OnBoarding(),
//    Approutes.signup:(context)=>const Signup(),
//    Approutes.forgetpassord:(context)=>const ForgerPassowrd(),
//    Approutes.varifycode:(context)=>const VarificationCode(),
//    Approutes.resetpassword:(context)=>const ResetPassword(),
//    Approutes.successresetpassword:(context)=>const SuccessResetPassword(),
//    Approutes.successsignup:(context)=>const SuccessSignup(),
//    Approutes.checkemail:(context)=>const CheckEmail(),
//    Approutes.signupvarifycode:(context)=>const SignUpVarifyCode(),
   

// };