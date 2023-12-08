import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/view/screen/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Widget custom=Padding(
//       padding: const EdgeInsets.fromLTRB(10,5,10,5),
//       child: Container(
//         height:185,
//         width:50,
//         child: ClipRRect(borderRadius: BorderRadius.circular(20),
//           child: Image.asset(ImageAssets.cat1,fit: BoxFit.fill)),

//       ),
//     );
var imglist = [
  ImageAssets.cat1,
  ImageAssets.cat2,
  ImageAssets.cat3,
  ImageAssets.cat4,
  ImageAssets.cat5
];

class CategriesSlider extends StatelessWidget {
  const CategriesSlider({Key? key}) : super(key: key);
  // final List<String> imglist=
  //  [ImageAssets.cat1,
  //  ImageAssets.cat2,
  //  ImageAssets.cat3
  //  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 2);

    List<Widget> banners = <Widget>[];

    for (int x = 0; x < imglist.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  imglist[x],
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
              //       gradient: LinearGradient(
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter,
              //           colors: [Colors.transparent, Colors.black])),
              // ),
              // Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Text(
              //         items[x],
              //         style: TextStyle(fontSize: 25.0, color: Colors.white),

              //       ),
              //     ],

              //   ),
              // ),
              GestureDetector(onTap: () {
                switch (imglist[x]) {
                  case ImageAssets.cat1:
                    {
                      break;
                    }
                }
              })
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }

    return SizedBox(
        width: 350,
        height: 200,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: banners,
        ));
  }
}
