import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intern1/Controllers/ProductContro.dart';
import 'package:intern1/Models/Productmodel.dart';
import 'package:intern1/screens/orders.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intern1/screens/search.dart';
import 'package:intern1/widgets/Product.dart';
import 'package:intern1/widgets/Ratingbar.dart';

class Productdetails extends StatelessWidget {
  Productdetails(this.product);
  final ProductsModel product;
final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => Search());
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => Credits());
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        title: Text(
          "Shoppy",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
              height: 250.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: CachedNetworkImage(
                imageUrl: product.image!,
                width: 30.w,
                height: 30.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Product Name",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            product.title.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Description",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: Color.fromARGB(255, 34, 34, 34)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(12.w, 5.h, 12.w, 1.w),
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(shape: BoxShape.rectangle),
            child: Text(
              product.description.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Color.fromARGB(255, 107, 113, 116)),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Ratingbar(product),
          SizedBox(
            height: 10.h,
          ),
          Text('\$${product.price}',
              style: TextStyle(fontSize: 22.sp, fontFamily: 'avenir')),
          SizedBox(
            height: 10.h,
          ),
          Text("Get it now for \$${(product.price)! - 3}",
              style: TextStyle(fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
               fontFamily: 'avenir')),
          SizedBox(
            height: 25.h,
          ),
          SizedBox(
            height: 70.h,
            width: 150.h,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>Credits());
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: BorderSide(color: Colors.white)))),
                child: Text("Buy Now",
                    style: TextStyle(
                      fontWeight:FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white,
                    ))),
          )
        ]),
      ),
    );
  }
}
