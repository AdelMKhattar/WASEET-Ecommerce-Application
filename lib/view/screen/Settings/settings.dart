import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/view/widget/settingsWigets/customcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeControllerImp=Get.put(HomeControllerImp());
    return Scaffold(
      body: GestureDetector(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 5),
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 6),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0xffffab40),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 20, 20, 10),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset(
                                ImageAssets.user,
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 25, 10, 10),
                        child: Text(
                          'ADEL \n MKH',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
             const CustomCard(title: 'Profile', trailing: Icons.person),
             const CustomCard(title: 'Appearance', trailing: Icons.dark_mode_outlined),
             const CustomCard(title: 'Favorite Shops', trailing: Icons.favorite),
             const CustomCard(title: 'Contact us', trailing: Icons.contact_page)
            ],
          ),
        ),
        onPanUpdate: (details) {
    // Swiping in right direction.
    if (details.delta.dx > 0) {
     
    }
  
    // Swiping in left direction.
    if (details.delta.dx < 0) {
      homeControllerImp.changePage(0);
    }
  },
      ),
    );
  }
}
