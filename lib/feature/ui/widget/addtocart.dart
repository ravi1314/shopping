import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shopping/feature/data/model/products_model.dart';


class AddToCart extends StatelessWidget {
  final GlobalKey widgetKey = GlobalKey();
  final void Function(GlobalKey) onClick;
  final ProductModel product; // Change this to accept ProductModel

  AddToCart({
    super.key,
    required this.onClick,
    required this.product, // Accept the product model
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widgetKey,
      child: Center(
        child: MaterialButton(
          elevation: 10,
          color: Colors.white,
          onPressed: () {
            onClick(widgetKey);
            // Navigate to CartScreen and pass the product details
          },
          child: Text("Add to Cart"),
        ),
      ),
    );
  }
}
