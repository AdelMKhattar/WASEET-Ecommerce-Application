import 'package:ecommerce_project/controller/auth/signupcontroller.dart';
import 'package:ecommerce_project/core/functions/exitalert.dart';
import 'package:ecommerce_project/core/functions/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onboardingWidgets/Authwidgets/customtextfield.dart';
import '../../widget/onboardingWidgets/Authwidgets/logoauth.dart';

class Signup extends StatelessWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller= Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
      ),
      body: WillPopScope(
        onWillPop:exitAlert,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 25, 30, 5),
          child: Form(
            key: controller.key,
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                   "Please Complete the Feilds Below" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AuthTextField(
                  isNum: false,
                   validator: (val){
                     return validation(val!,4 , 25, 'username');
                  },
                  hint: "Enter a Username", 
                  label: "Username", 
                  iconData: Icons.person_outline,
                  myController: controller.username,
                  ),
                 const SizedBox(
                  height: 30,
                ),
                AuthTextField(
                  isNum: true,
                   validator: (val){
                    return validation(val!,8 , 25, 'phone');
                  },
                  hint: "Enter Your Phonenumber", 
                  label: "Phonenumber", 
                  iconData: Icons.phone_android_outlined,
                  myController: controller.phonenumber,
                  ),
                const SizedBox(
                  height: 30,
                ),
                AuthTextField(
                  isNum: false,
                   validator: (val){
                    return validation(val!,8 , 25, 'email');
                  },
                    hint: "13".tr, 
                    label: "12".tr, 
                    iconData: Icons.email_outlined,
                    myController: controller.email,
                    ),
                const SizedBox(
                  height: 30,
                ),
                GetBuilder<SignUpControllerImp>(builder: (contrtoller)=>
                AuthTextField(
                  obsecure:controller.hidepassword,
                  onTap: (){controller.showPassword();},
                  isNum: false,
                   validator: (val){
                    return validation(val!,8 , 45, 'password');
                  },
                  hint: "15".tr,
                  label: "14".tr,
                  iconData: Icons.lock_outlined,
                  myController: controller.password,
                ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(onPressed: (){
                    controller.goToCheckEmail();
                  },
                  color: Colors.lightBlue,
                  child:  Text("SignUp"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
                  ),
                ),
              const SizedBox(height: 25,),
               Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Text("Already Have an Account "),
                    InkWell(child: 
                    Text(" Sign In",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),
                    ),
                    onTap: (){
                      controller.goToSignin();
                    },
                    )
                  ],
                ),
              ),
              

              ],
            ),
          ),
        ),
      ),
    );
  }
}