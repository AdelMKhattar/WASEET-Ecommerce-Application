import 'package:ecommerce_project/view/screen/Settings/settings.dart';
import 'package:ecommerce_project/view/screen/explore/explore.dart';
import 'package:ecommerce_project/view/screen/home/homescreen.dart';
import 'package:ecommerce_project/view/screen/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  changePage(int index);
  goToShop(int id);
}

class HomeControllerImp extends HomeController {
  int currentpage = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Settings(),
    const ExploreShops(),
  ];
  @override
  changePage(int index) {
    currentpage = index;
    update();
  }

  @override
  goToShop(int id) {
    Get.to(
        Shops(
          id: id,
        ),
        transition: Transition.zoom);
  }
}
