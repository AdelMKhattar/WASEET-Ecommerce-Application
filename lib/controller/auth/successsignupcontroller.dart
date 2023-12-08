import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController{
  goToSignin();
  

}
class SuccessSignupControllerImp extends SuccessSignupController{
  @override
  goToSignin() {
    Get.offAllNamed(Approutes.login);
  }
  
}