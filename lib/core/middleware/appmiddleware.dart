import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMiddleware extends GetMiddleware 
{
  MyServices myServices= Get.find();
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) 
  {
    return const RouteSettings(name: Approutes.chooselanguage);
    // if(myServices.sharedPreferences.getString("notfirtuse")=="1")
    // {
    //   return const RouteSettings(name: Approutes.login);
    // }
  }
  
}
