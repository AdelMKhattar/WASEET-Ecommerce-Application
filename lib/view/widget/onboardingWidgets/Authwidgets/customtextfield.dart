import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?)? validator;
  final bool isNum;
  final bool? obsecure;
  final void Function()?  onTap;

  const AuthTextField(
  { Key? key ,
  this.onTap,
  this.obsecure,
  required this.hint,
  required this.label,
  required this.iconData,
  required this.myController, 
  required this.validator, 
  required this.isNum
  
  }
  ) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {

    return  TextFormField(
                obscureText: obsecure==null||obsecure==false ? false:true,
                keyboardType: isNum ? TextInputType.numberWithOptions(decimal: true): TextInputType.text,
                validator: validator,
                decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:InkWell(child:Icon(iconData),
                onTap: onTap,
                ),
                
                label:  Text(label),
                hintText: hint,
                hintStyle: const TextStyle(fontSize: 13),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            );
  }
}