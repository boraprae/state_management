import 'package:get/get.dart';

class CountController {
  // data --
  //!reactive variable (obs =)
  var count = 0.obs;

  // logic
  void add() {
    count.value++;
  }
}
