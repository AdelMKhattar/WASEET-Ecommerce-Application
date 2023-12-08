import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ShopController extends GetxController
{
  scrollRight();
  scrollLeft();

}

class ShopControllerImp extends ShopController
{
  bool likepressed=false;
  final ScrollController scrollcontroller=ScrollController();
  @override
  scrollLeft() {
        scrollcontroller.animateTo(
        scrollcontroller.position.minScrollExtent,
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
      );
  }

  @override
  scrollRight() {
    scrollcontroller.animateTo(
        scrollcontroller.position.maxScrollExtent,
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
      );
  }
  
  autoScroll()
  {  
        scrollcontroller.animateTo(
        scrollcontroller.position.maxScrollExtent,
        duration: const Duration(seconds: 10),
        curve: Curves.fastOutSlowIn,
      );
  }
  like(){
    if(likepressed==false)
    {
      likepressed=true;
    }
    else
    {
      likepressed= false;
    }
    update();
  }
@override
  void onReady() {
    autoScroll();
    super.onReady();
  }
  
}