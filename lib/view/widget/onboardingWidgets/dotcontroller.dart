import 'package:ecommerce_project/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class OnboardingDotController extends StatelessWidget {
  const OnboardingDotController({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImpOnboardingController>
    (builder: (controller)=> Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(onBoarding.length, (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 10),
                  duration:const Duration(milliseconds: 200),
                  width: controller.currentslide == index ? 20: 5,
                  height: 6, 
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                )
              ],
            ) 
            );
  }
}