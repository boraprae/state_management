import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';

class TabCart extends StatelessWidget {
  TabCart({Key? key}) : super(key: key);
  ShopController shopController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
              'Shirt ${shopController.shirt} x 800  = ${shopController.shirt.value * 800} baht'),
        ),
        Obx(
          () => Text(
              'Shoe ${shopController.shoe} x 1200 = ${shopController.shoe.value * 1200} baht'),
        ),
        Obx(
          () => Text('Total = ${shopController.calculateTotalPrice()} baht'),
        ),
        ElevatedButton(
          onPressed: shopController.clearCart,
          child: const Text('Clear cart'),
        ),
      ],
    );
  }
}
