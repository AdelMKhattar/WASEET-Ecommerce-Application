import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/controller/shopcontroller.dart';
import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class ShopsList extends StatelessWidget {
  const ShopsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: shopsstatic.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            child: Container(
              height: 160,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  // gradient: LinearGradient(
                  //     colors: [Color(0xffF749A2), Color(0xffFF7375)],
                  //     begin: Alignment.topLeft,
                  //     end: Alignment.bottomRight),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          shopsstatic[index].shopimg!,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 25, 5, 10),
                      child: Text(
                        shopsstatic[index].shopname!,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          // ignore: prefer_const_constructors
                          Text(
                            shopsstatic[index].shoplocation!,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Icon(Icons.phone_android_outlined),
                          // ignore: prefer_const_constructors
                          Text(
                            shopsstatic[index].shopnumber!,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            onTap: () {
              controller.goToShop(shopsstatic[index].index!);
            },
          ),
        );
      },
    );
  }
}
