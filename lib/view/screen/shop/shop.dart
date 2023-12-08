import 'package:ecommerce_project/controller/shopcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/imageasset.dart';
import '../../../data/datasource/static/static.dart';

var imglist = [
  'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
  'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
  'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kaia-gerber-zara-2-1664871930.jpg',
];

class Shops extends StatelessWidget {
  const Shops({Key? key, this.id}) : super(key: key);
  final int? id;
  @override
  Widget build(BuildContext context) {
    Get.put(ShopControllerImp());
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ShopControllerImp>(builder: (controller) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Column(children: [
                SizedBox(
                  height: 370,
                  child: Stack(
                    children: [
                      ListView.builder(
                          itemCount: shopsstatic[id!].shopimgsurls!.length,
                          scrollDirection: Axis.horizontal,
                          controller: controller.scrollcontroller,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: width,
                              child: FadeInImage.assetNetwork(
                                placeholder: ImageAssets.appName,
                                image: shopsstatic[id!].shopimgsurls![index],
                                fit: BoxFit.fill,
                              ),
                              // child: Image.network(

                              //   shopsstatic[id!].shopimgsurls![index],
                              //   fit: BoxFit.fill,
                              // )
                            );
                            //  return Image.asset(imglist[index],fit: BoxFit.fill,);
                          }),
                      Positioned(
                        child: IconButton(
                            icon: const Icon(
                              Icons.chevron_right_outlined,
                              color: Colors.white,
                              size: 45,
                            ),
                            onPressed: () {
                              controller.scrollRight();
                            }),
                        left: 350,
                        bottom: MediaQuery.of(context).size.height / 4,
                      ),
                      Positioned(
                        child: IconButton(
                            icon: const Icon(
                              Icons.chevron_left_outlined,
                              color: Colors.white,
                              size: 45,
                            ),
                            onPressed: () {
                              controller.scrollLeft();
                            }),
                        right: 350,
                        bottom: MediaQuery.of(context).size.height / 4,
                      ),
                    ],
                  ),
                ),
              ]),
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              shopsstatic[id!].shopname!,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: IconButton(
                                  onPressed: () {
                                    controller.like();
                                  },
                                  icon: controller.likepressed == true
                                      ? const Icon(
                                          Icons.favorite,
                                          size: 30,
                                          color: Colors.red,
                                        )
                                      : const Icon(
                                          Icons.favorite_border,
                                          size: 30,
                                          color: Colors.red,
                                        )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Text(
                          'Description:',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          shopsstatic[id!].description!,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.location_on_outlined,
                              size: 25,
                            ),
                          ],
                        ),
                        Text(
                          shopsstatic[id!].shoplocation!,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Text(
                              'For Calling',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.phone_android_outlined,
                              size: 25,
                            ),
                          ],
                        ),
                        Text(
                          shopsstatic[id!].shopnumber!,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ));
    });
  }
}
