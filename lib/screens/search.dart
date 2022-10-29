import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:intern1/Models/Productmodel.dart';

import '../Controllers/ProductContro.dart';

class Search extends StatelessWidget {
  Search();

  final TextEditingController tc = TextEditingController();
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shoppy",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.sp,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 42.h,
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: Colors.black26),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: TextField(
            controller: tc,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                ),
                suffixIcon: GestureDetector(
                  child: Icon(Icons.close),
                  onTap: () {
                    tc.clear();
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )),
          ),
        ),
      ]),
    );
  }
}
