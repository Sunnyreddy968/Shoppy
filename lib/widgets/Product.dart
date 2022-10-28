import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern1/Models/Productmodel.dart';
class Product extends StatelessWidget {
  final ProductsModel product;
  Product(this.product);
  
  ShapeBorder? get b => null;
  ShapeBorder? get a => null;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation :4,
      surfaceTintColor: Color.fromARGB(255, 70, 170, 251),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 70.h,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image!,
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
                // Positioned(child: Obx(()=>CircleAvatar(backgroundColor: Colors.white, child: IconButton(icon: product.,),)))
              ],
            ),
             SizedBox(height: 4.0.h,),
            Text(
              product.title!,
              maxLines: 1,
              style: TextStyle(
                  fontFamily: 'avenir', 
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4.h),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding:  EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating!.rate.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                     Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
             SizedBox(height: 15.h),
            Text('\$${product.price}',
                style: TextStyle(fontSize: 16.sp, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
