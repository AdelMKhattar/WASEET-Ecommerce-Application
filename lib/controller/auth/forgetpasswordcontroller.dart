
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController{

varifyEmail();
goToVerifyCode();

}

class ForgetpasswordControllerimp extends ForgetpasswordController
{
  
  late TextEditingController email;
  @override
  goToVerifyCode() {
    Get.toNamed(Approutes.varifycode);
  }

  @override
  varifyEmail() {
    
  }

  @override
  void onInit() 
  {
    email=TextEditingController();
    super.onInit();
  }
}