import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:ecommerce_project/view/screen/chooselanguage.dart';
import 'package:ecommerce_project/view/widget/homescreenWidgets/appName.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
          child: Image.asset(
        ImageAssets.appName,
        height: 500,
      )),
      nextScreen: const ChooseLanguage(),
      backgroundColor: maincolor,
      duration: 3500,
      splashIconSize: 500,
    );
  }
}
