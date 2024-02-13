import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Font size : ${controller.count}", 
            style: TextStyle(fontSize: controller.count.value.toDouble()),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16), 
          FloatingActionButton(
            onPressed: () {
              controller.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}