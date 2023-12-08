import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
  goToSuccessPage();
  checkEmail();
}

class CheckEmailControllerImp extends CheckEmailController{

  late TextEditingController email;
  @override
  checkEmail() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }

  @override
  goToSuccessPage() {
    Get.offNamed(Approutes.successsignup);
  }
  @override
  void onInit() {
    email=TextEditingController();
    super.onInit();
  }
  
}