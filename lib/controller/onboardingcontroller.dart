import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/services/services.dart';
import 'package:ecommerce_project/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController{
  nextSlide();
  onSlideChange(int index);

}
class ImpOnboardingController extends OnboardingController{
  MyServices myServices=Get.find();
  int currentslide=0;
  late PageController pageController;
  @override
  nextSlide() {
    currentslide++;
    if(currentslide+1>onBoarding.length){
    myServices.sharedPreferences.setString("notfirtuse", "1");
    Get.offAllNamed(Approutes.login);
    }
   else {
    pageController.animateToPage(currentslide, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);}
   
  }

  @override
  onSlideChange(int index) {
    currentslide=index;
    update();
     
  }
  @override 
  void onInit()
  {
    
    pageController=PageController();
    super.onInit();
  }

}