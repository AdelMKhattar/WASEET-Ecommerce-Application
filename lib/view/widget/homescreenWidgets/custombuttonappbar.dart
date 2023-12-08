import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressd;
  final IconData icon;
  final String text;
  final bool active;
  const CustomButtonAppBar(
      {Key? key,
      required this.onPressd,
      required this.icon,
      required this.text,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    onPressd;
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        icon,
                        color: active == true ? Colors.redAccent : Colors.black,
                        size: 40,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: active == true
                                ? Colors.redAccent
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
