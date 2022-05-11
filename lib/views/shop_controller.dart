import 'package:get/get.dart';

class ShopController extends GetxController {
  // data
  var shirt = 0.obs;
  var shoe = 0.obs;

  // logic
  void add(int product) {
    if (product == 1) {
      shirt.value++;
    } else {
      shoe.value++;
    }
  }

  int calculateTotalPrice() {
    return shirt.value * 800 + shoe.value * 1200;
  }

  void clearCart() {
    shirt.value = 0;
    shoe.value = 0;
  }

  int calculateTotalProduct() {
    return shirt.value + shoe.value;
  }
}
