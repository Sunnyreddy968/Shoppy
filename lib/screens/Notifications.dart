import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intern1/screens/Home.dart';

class Notifi extends StatelessWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Get.off(() => Home());
          },
        ),
        title: Text(
          "Shoppy",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Text(
        "Your Notifications will appear here",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
          color: Colors.black,
        ),
      )),
    );
  }
}
