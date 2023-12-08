import 'package:get/get.dart';

validation(String input,int min, int max, String Type)
{
     if(input.isEmpty){
              return "Can't be Empty";
  }
  if(Type=="email")
  {
    if(!GetUtils.isEmail(input))return "Please Enter a Valid Email Format";
  }
  if(Type=="username")
  {
    if(!GetUtils.isUsername(input))return "Please Enter a Valid Username Format";
  }
  if(Type=="phone")
  {
    if(!GetUtils.isPhoneNumber(input))return "Please Enter a Valid Phonenumber Format";
  }
  
  if(input.length<min){
              return "Can't be less than $min charactars";
  }
   if(input.length>max){
              return "Can't be more than $max charactars";
  }
   if(input.isEmpty){
              return "Can't be Empty";
  }


}