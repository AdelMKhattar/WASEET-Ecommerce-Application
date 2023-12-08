import 'package:ecommerce_project/controller/onboardingcontroller.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class OnboardingCustomButton extends StatelessWidget {
  const OnboardingCustomButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<ImpOnboardingController>(builder: (controller)=>Container(
              margin: const EdgeInsets.only(bottom: 40),
              height: 50,
              width: 220,
              child: MaterialButton(onPressed: (){
                controller.nextSlide();
              },
               color: maincolor
              ,child:  controller.currentslide==3?Text("6".tr):Text("7".tr),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),             
              ),
            )
            );
  }
}