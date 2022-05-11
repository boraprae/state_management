import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';

class TabShoe extends StatelessWidget {
  TabShoe({Key? key}) : super(key: key);
  ShopController shopController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Shoe 1200 baht'),
        ElevatedButton(
          onPressed: () {
            shopController.add(2);
          },
          child: const Text('Add to cart'),
        ),
      ],
    );
  }
}
