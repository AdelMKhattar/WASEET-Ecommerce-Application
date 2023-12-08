import 'package:ecommerce_project/core/localization/changelocal.dart';
import 'package:ecommerce_project/core/localization/translation.dart';
import 'package:ecommerce_project/core/services/services.dart';
import 'package:ecommerce_project/view/screen/chooselanguage.dart';
import 'package:ecommerce_project/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: controller.apptheme,
      // home: const ChooseLanguage() ,
      // // routes: routes,
      getPages: routes,
    );
  }
}
