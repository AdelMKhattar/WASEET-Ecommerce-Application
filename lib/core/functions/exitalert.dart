import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitAlert()
{
   Get.defaultDialog(
    title: "Alert" ,
    middleText:"Are you sure do you want to exit?" ,
    actions: [
      ElevatedButton(
        onPressed: (){
        exit(0);
      }, child: Text("Yes"),),
      const SizedBox(width: 20,),
      ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text('No'))
    ],
    
  );
  return Future.value(true);

}