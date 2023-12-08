import 'package:ecommerce_project/controller/auth/signupcontroller.dart';
import 'package:ecommerce_project/controller/auth/signupvarifycodecontroller.dart';
import 'package:ecommerce_project/controller/auth/varificationcodecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class SignUpVarifyCode extends StatelessWidget {
  const SignUpVarifyCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpVarifyCodeControlletImp controller= Get.put(SignUpVarifyCodeControlletImp());
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text(
          "Varify Your Email",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
               "Enter the Code Sent to you Eamil Address" ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OtpTextField(
              borderWidth: 1,
              fieldWidth: 50,
            borderRadius: BorderRadius.circular(15),
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
       onSubmit: (String verificationCode){
            controller.goToSuccessSignuP();
          
        }, // end onSubmit
    ),
          

          ],
        ),
      ),
    );
  }
}