import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController
{
  signUp();
  goToCheckEmail();
  goToSignin();
}

class SignUpControllerImp extends SignupController
{
  GlobalKey<FormState>key=GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController phonenumber;
  late TextEditingController email;
  late TextEditingController password;
  bool hidepassword=true;
  
  showPassword()
  {
    hidepassword=hidepassword==true ? false : true;
    update();
  }
  @override
  goToCheckEmail() {
    var formstate=key.currentState;
    if(formstate!.validate())
    {
      Get.offNamed(Approutes.signupvarifycode);
      Get.delete<SignUpControllerImp>();
    }
    else{
      print('error');
    }
    
  }

  @override
  signUp() {

  }

  @override
  void onInit() {
    username= TextEditingController();
    phonenumber=TextEditingController();
    email=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    phonenumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignin() {
   Get.offNamed(Approutes.login);
  }
  
}