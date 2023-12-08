import 'package:ecommerce_project/controller/auth/checkemailcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onboardingWidgets/Authwidgets/customtextfield.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller=Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Text(
          "Check Email",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
               "Please Enter your Email the Click the Button" ,
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
              
              },
              hint: "Enter a Email", 
              label: "Email", 
              iconData: Icons.email_outlined,
              myController: controller.email,

              ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
                controller.goToSuccessPage();
              },
              color: Colors.lightBlue,
              child:  Text("Check Email"),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
              
              ),
            ),

          ],
        ),
      ),
    );
  }
}