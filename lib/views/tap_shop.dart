import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';
import 'tab_cart.dart';
import 'tap_shoe.dart';
import 'tap_shirst.dart';

class TabShop extends StatelessWidget {
  TabShop({Key? key}) : super(key: key);
  ShopController shopController = Get.put(ShopController());

  Widget createBadge() {
    return Visibility(
      visible: shopController.calculateTotalProduct() != 0,
      child: Container(
        margin: const EdgeInsets.only(left: 4),
        alignment: Alignment.center,
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        ),
        child: Text(
          '${shopController.calculateTotalProduct()}',
          style: const TextStyle(fontSize: 8),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shop'),
          ),
          body: TabBarView(
            children: [
              TabShirt(),
              TabShoe(),
              TabCart(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.blue,
            child: TabBar(tabs: [
              const Tab(text: 'Shirt'),
              const Tab(text: 'Shoe'),
              Tab(
                child: Row(
                  children: [
                    const Text('Cart'),
                    Obx(() => createBadge()),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
