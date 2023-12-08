import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/main.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor:Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.changePage(0);
          },
          child: const Icon(
            Icons.home_filled,
            size: 40,
          ),
          backgroundColor:
              controller.currentpage == 0 ? Colors.redAccent : Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomAppBar(
          color:Color(0xfff08080),
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 1),
            child: Row(
              children: [
                Row(
                  children: [
                    // CustomButtonAppBar(
                    //   onPressd: (){
                    //     controller.changePage(1);
                    //     //controller.changePage(1);

                    //   },
                    //   icon: Icons.settings,
                    //   text: 'Settings',
                    //   active: controller.currentpage == 1 ? true : false,
                    // ),

                    MaterialButton(
                      onPressed: () {
                        controller.changePage(1);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.settings,
                            size: 40,
                            color: controller.currentpage == 1
                                ? Colors.redAccent
                                : Colors.black,
                          ),
                          Text(
                            'settings',
                            style: TextStyle(
                              color: controller.currentpage == 1
                                  ? Colors.redAccent
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        controller.changePage(2);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.view_carousel,
                            size: 40,
                            color: controller.currentpage == 2
                                ? Colors.redAccent
                                : Colors.black,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                              color: controller.currentpage == 2
                                  ? Colors.redAccent
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: controller.screens[controller.currentpage],
        // body: ListView.builder(itemCount: controller.screens.length,
        // scrollDirection: Axis.horizontal,
        
        // shrinkWrap: true,
        //   itemBuilder: ((context, index) => 
        //    Container(height: 350,
        //    width: MediaQuery.of(context).size.width,
        //     child: controller.screens[index])
        // ))
        
      ),
    );
  }
}
