import 'package:ecommerce_project/controller/auth/varificationcodecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VarificationCode extends StatelessWidget {
  const VarificationCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VarificationCodeControllerImp controller= Get.put(VarificationCodeControllerImp());
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
            controller.goToResetPassword();
          
        }, // end onSubmit
    ),
          
            const SizedBox(height: 50,),
            /*Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
              },
              color: Colors.lightBlue,
              child:  Text("Check Email"),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
              
              ),
            ),*/

          ],
        ),
      ),
    );
  }
}