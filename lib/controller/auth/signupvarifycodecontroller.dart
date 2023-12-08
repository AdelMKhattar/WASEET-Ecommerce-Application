import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:get/get.dart';

abstract class SignUpVarifyCodeController extends GetxController{

  goToSuccessSignuP();
}

class SignUpVarifyCodeControlletImp extends SignUpVarifyCodeController{
  @override
  goToSuccessSignuP() {
    Get.offNamed(Approutes.successsignup);
  }
  
}