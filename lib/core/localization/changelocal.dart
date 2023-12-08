import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart';

class LocaleController extends GetxController
{
  Locale? language;
  ThemeData apptheme=entheme;
  MyServices myServices= Get.find();
  MyServices m=Get.find();
  

  changeLang(String langcode)
  {
   
    Locale locale=Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme=langcode=="ar"?artheme:entheme;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  
   
  }

  @override
  void onInit()
  {
    if(myServices.sharedPreferences.getString('lang')=='ar')
    {
      language= const Locale('ar');
      apptheme=artheme;
      
    }
    else if(myServices.sharedPreferences.getString('lang')=='en')
    {
      language=const Locale('en');
      apptheme=entheme;
    }
    else
    {
      language=Locale(Get.deviceLocale!.languageCode);
      apptheme=entheme;
    }
    super.onInit();
  }

} 