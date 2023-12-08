import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/view/widget/exploreshops/shopslist.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/themes.dart';
import '../../../core/functions/exitalert.dart';

class ExploreShops extends StatelessWidget {
  const ExploreShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controllerImp = Get.put(HomeControllerImp());
    return GestureDetector(
      child: WillPopScope(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchBar(
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 600,
                  child: ShopsList(),
                )
              ]),
        ),
        onWillPop: exitAlert,
      ),
      onPanUpdate: (details) {
        // Swiping in right direction.
        if (details.delta.dx > 0) {
          controllerImp.changePage(0);
        }

        // Swiping in left direction.
        if (details.delta.dx < 0) {}
      },
    );
  }
}
