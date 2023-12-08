import 'dart:ui';
import 'package:ecommerce_project/controller/auth/logincontroller.dart';
import 'package:ecommerce_project/core/constant/routesnames.dart';
import 'package:ecommerce_project/core/functions/exitalert.dart';
import 'package:ecommerce_project/core/functions/validation.dart';
import 'package:ecommerce_project/routes.dart';
import 'package:ecommerce_project/view/screen/auth/signup.dart';
import 'package:ecommerce_project/view/widget/onboardingWidgets/Authwidgets/customtextfield.dart';
import 'package:ecommerce_project/view/widget/onboardingWidgets/Authwidgets/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logincontrollerimp contrtoller=Get.put(Logincontrollerimp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text(
          '9'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
      ),
      body: WillPopScope(child: Container(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 5),
        child: Form
        (key: contrtoller.loginkey,
          child: ListView(
            children: [
              Text(
                "10".tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              const LogoAuth(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "11".tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AuthTextField(
                isNum: false,
                validator: (val){
                  // return validation(val!,10, 100, "email");
                },
                  hint: "13".tr, label: "12".tr, iconData: Icons.email_outlined,myController:contrtoller.email),
              const SizedBox(
                height: 30,
              ),
              GetBuilder<Logincontrollerimp>(builder: (contrtoller)=>
              AuthTextField(
                obsecure: contrtoller.hidepassword,
                onTap: (){contrtoller.showPassowrd();
                },
                isNum: false,
                 validator: (val){
                  // return validation(val!,8, 45, "password");
                },
                hint: "15".tr,
                label: "14".tr,
                iconData: Icons.lock_outlined,
                myController: contrtoller.password,
              ),
              ),

              const SizedBox(
                height: 20,
              ),
               Padding(padding: EdgeInsets.only(right: 20),
                child: InkWell(child: const Text("Forget Password",textAlign: TextAlign.end,
               style: TextStyle(
                fontWeight: FontWeight.bold
               ), 
               ),
               onTap:(){
                 contrtoller.goToForgetpassword();
               },
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  contrtoller.login();
                },
                color: Colors.lightBlue,
                child:  Text("9".tr),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
                ),
              ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("Don't Have Account "),
                  InkWell(child: 
                  Text(" Sign Up",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),
                  ),
                  onTap: (){
                    contrtoller.goToSignup();
                  },
                  )
                ],
              ),
            )
            ],
          ),
        ),
      ),
       onWillPop: exitAlert
       )
    );
  }
}
