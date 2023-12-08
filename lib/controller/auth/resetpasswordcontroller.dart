
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{

goToSuccessPage();
chekPassword();

}

class ResetPassowrdControllerImp extends ResetPasswordController{

  late TextEditingController password;
  late TextEditingController repassword;

  @override
  chekPassword() {
   
  }

  @override
  goToSuccessPage() {
    Get.offNamed(Approutes.successresetpassword);
  }

  @override
  void onInit() {
    password= TextEditingController();
    repassword= TextEditingController();
    super.onInit();
  }

}