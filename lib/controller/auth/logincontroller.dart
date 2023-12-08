import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginContrtoller extends GetxController
{
  login();
  goToSignup();
  goToForgetpassword();
  
}

class Logincontrollerimp extends LoginContrtoller
{
  bool hidepassword=true; 
  GlobalKey<FormState>loginkey=GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  showPassowrd()
  {
    hidepassword=hidepassword==true ?false : true;
    update();
  }

  @override
  goToSignup() {
    Get.offNamed(Approutes.signup);
  }

  @override
  login() {
   var formdata= loginkey.currentState;
   if(formdata!.validate())
   {
       print('valid');
       Get.offNamed(Approutes.home);
    }
    else{
      print('not valid');  
    }
  }
  @override
  void onInit() {
    email=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetpassword() {
   Get.offNamed(Approutes.forgetpassord);
  }

  
}