import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../data/model/shop.dart';

// Shop s = Shop();
// List<Shop> shops = s.fetchShops();

class ShopHome extends StatelessWidget {
  const ShopHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controllerImp = Get.put(HomeControllerImp());
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemCount: topshopsstatic.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SizedBox(
                            height: 90,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(65),
                              child: Image.network(
                                  
                                  topshopsstatic[index].shopimg!,
                                  fit: BoxFit.fill,),
                                  
                              //child: Image.asset(shops[index].shopimg!,fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 10, 5, 10),
                              child: Text(
                                topshopsstatic[index].shopname!,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'PlayfairDisplay',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on_outlined),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    topshopsstatic[index].shoplocation!,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const Icon(Icons.phone_android_outlined),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    topshopsstatic[index].shopnumber!,
                                    style: TextStyle(
                                      fontSize: 15,
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
                  controllerImp.goToShop(topshopsstatic[index].index!);
                },
              ),
            );
          }),
    );
  }
}
