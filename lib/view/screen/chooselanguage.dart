import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart';

import '../widget/homescreenWidgets/appName.dart';

class ChooseLanguage extends GetView<LocaleController> {
  const ChooseLanguage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,50,0,0),
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //AppName(),
           Text("1".tr ,style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.bold,
          ),),
         const  SizedBox(height: 30,),
           Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  controller.changeLang('en');
                  Get.toNamed(Approutes.onboarding);
                },color: Colors.deepPurple.shade400
                ,child:  Text("English",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),  
                ),
              ),
              const SizedBox(height: 35,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  controller.changeLang('ar');
                  Get.toNamed(Approutes.onboarding);
                },color: Colors.indigoAccent
                ,child:  Text("العربية",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),  
                ),
              )
          ],
        ),
      ),
    );
  }
}