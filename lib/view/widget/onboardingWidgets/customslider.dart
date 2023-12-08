import 'package:ecommerce_project/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';


class OnboardingCustomSlider extends GetView<ImpOnboardingController> {
  const OnboardingCustomSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onSlideChange(val);
      },
          itemCount: onBoarding.length,
          itemBuilder: (context,i)=>
          Column(
            children: [
              const SizedBox(height: 30,),
              Text(onBoarding[i].title!,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              const SizedBox(height: 80,),
              Image.asset(onBoarding[i].image!,
              height: 200,
              width: 300,
              fit: BoxFit.fill,scale: 0.8,),
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoarding[i].body!,textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15,height: 2,color: Colors.black45
                ,fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        
          );
  }
}