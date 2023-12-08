import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.fromLTRB(10, 25, 10, 0),
        child:Container(
        child: Image.asset(ImageAssets.appName,height: 300,
        width: double.infinity,
        fit: BoxFit.fill,),
      
    )
    );
  }
}