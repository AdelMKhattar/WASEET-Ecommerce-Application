import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAssets.logo,height: 150,);
  }
}