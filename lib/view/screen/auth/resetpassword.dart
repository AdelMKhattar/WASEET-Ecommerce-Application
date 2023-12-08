import 'package:ecommerce_project/controller/auth/resetpasswordcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onboardingWidgets/Authwidgets/customtextfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPassowrdControllerImp controller=Get.put(ResetPassowrdControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Text(
          "Resest Your Password",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 5),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
               "Please Enter your New Password" ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            AuthTextField(
              isNum: false,
               validator: (val){
                
              },
              hint: "Enter your New Password", 
              label: "New Password", 
               iconData: Icons.password_outlined,
              myController: controller.password,

              ),
            SizedBox(height: 20,),
            AuthTextField(
              isNum: false,
               validator: (val){
                
              },
              hint: "Re Enter your New Password", 
              label: "Re Enter New Password", 
               iconData: Icons.password_outlined,
              myController:  controller.repassword,
              ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
                controller.goToSuccessPage();
              },
              color: Colors.lightBlue,
              child:  Text("Done"),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
              
              ),
            ),
            SizedBox(height: 50,)
          ],
        

        ),
      ),
    );
  }
}