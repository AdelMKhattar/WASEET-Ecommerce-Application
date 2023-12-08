import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/shopcontroller.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GetBuilder<ShopControllerImp>(builder: (controller) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Column(children: []),
              Positioned(
                top: 270,
                child: Container(
                  //color: Colors.white,
                  width: width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 10, 5),
                    child: ListView(
                      children: [],
                    ),
                  ),
                ),
              )
            ],
          ));
    });
  }
}
