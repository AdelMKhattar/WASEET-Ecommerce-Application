import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:get/get.dart';

abstract class VarificationcodeController extends GetxController
{
  goToResetPassword();
  checkCode();
}

class VarificationCodeControllerImp extends VarificationcodeController
{
  @override
  checkCode() {

  }

  @override
  goToResetPassword() {
    Get.offNamed(Approutes.resetpassword);
  }

}
