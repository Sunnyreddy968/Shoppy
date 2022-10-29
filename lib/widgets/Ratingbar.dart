import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intern1/Models/Productmodel.dart';

class Ratingbar extends StatelessWidget {
  Ratingbar(this.product);
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
   initialRating: double.parse(product.rating!.rate.toString()),
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.green,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
);
  }
}
