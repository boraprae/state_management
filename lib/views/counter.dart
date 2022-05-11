import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

//!-- Reactive Programming --! update logic = update UI

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);
  CountController countController = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        //?=== Obx is the widget from Get package===
        child: Obx(
          () =>  Text(
            'Counter = ${countController.count}',
            style: const TextStyle(fontSize: 22),
          ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          countController.add();
        },
      ),
    );
  }
}
