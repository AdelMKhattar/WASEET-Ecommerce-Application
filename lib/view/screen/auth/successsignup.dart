import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce_project/controller/auth/successsignupcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller= Get.put(SuccessSignupControllerImp());
    return Scaffold(backgroundColor: Colors.white,
     body: Column(
      children: [
        Container(alignment:Alignment.center,
     child: Lottie.asset('assets/lottie/done.json',width: 500,height: 500,frameRate: FrameRate(60) 
     ),
      
      ),
      const Spacer(),
      Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 350,
              child: MaterialButton(onPressed: (){
                controller.goToSignin();
              },
              color: Colors.green.shade500,
              child:  Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),  
              ),
            ),
            const SizedBox(height: 65,)
      ],
     ),

      
    );
  }
}