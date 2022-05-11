import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';

class TabShirt extends StatelessWidget {
  TabShirt({Key? key}) : super(key: key);
  ShopController shopController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Shirt 800 baht'),
        ElevatedButton(
          onPressed: () {
            shopController.add(1);
          },
          child: const Text('Add to cart'),
        ),
      ],
    );
  }
}
