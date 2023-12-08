import 'package:ecommerce_project/controller/onboardingcontroller.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/data/datasource/static/static.dart';
import 'package:ecommerce_project/view/widget/onboardingWidgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/onboardingWidgets/customslider.dart';
import '../widget/onboardingWidgets/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ImpOnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(children: [
        const Expanded(
          flex: 2,
          child:OnboardingCustomSlider(),
        ),
        const SizedBox(height: 15 ,),
        Expanded(
          flex: 1,
          child: Column(
          children: const[
            OnboardingDotController(),
            Spacer(flex: 2,),
            OnboardingCustomButton(),
          ],
        )
        )

      ],
      )
    
      ),
  
    );
  }
}