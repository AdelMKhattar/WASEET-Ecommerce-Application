import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/core/functions/exitalert.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/appName.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/categoriesslider.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/searchBar.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/topshops.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controllerImp=Get.put(HomeControllerImp());
    return GestureDetector(
      child: WillPopScope(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                title:  SearchBar(color: Colors.grey.shade400,),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              const SizedBox(
                height: 13,
              ),
              //AppName(),
              //SearchBar(),
             const CategriesSlider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Stack(
                  children: [
                    Container(
                      child: const Padding(
                        padding:  EdgeInsets.only(top: 30),
                        child: ListTile(
                          title: Text("Hello Winter",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          subtitle: Text(
                            "Discounts, Offers & More",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFFee5c7d),
                          borderRadius: BorderRadius.circular(18)),
                    ),
                    Positioned(
                        top: -20,
                        right: -20,
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Color(0xfffbf191),
                              borderRadius: BorderRadius.circular(160)),
                        ))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Text(
                  "Top Shops:",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const ShopHome(),
            ],
          ),
        ),
        onWillPop: exitAlert,
      ),
      onPanUpdate: (details) {
    // Swiping in right direction.
    if (details.delta.dx > 0) {
     controllerImp.changePage(1);
    }
  
    // Swiping in left direction.
    if (details.delta.dx < 0) {
      controllerImp.changePage(2);
    }
  },
    );
  }
}
