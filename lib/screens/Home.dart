import 'package:flutter/material.dart';
import 'package:intern1/screens/orders.dart';
import 'package:intern1/widgets/Product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern1/Controllers/ProductContro.dart';

class Home extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: () {
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Center(
                    child: Text(
                      "Shoppy",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16),
                    itemCount: productController.productList.length,

                    itemBuilder: (context, index) {
                      return Product(productController.productList[index]);
                    },
                    // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
