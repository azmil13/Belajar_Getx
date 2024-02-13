import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  final count = 0.obs;

 void increment() {
    if (count.value < 100) {
      count.value++;
      Get.snackbar("Sory ye", "Tidak lebih dari 100");
    }
  }
   void decrement() {
    if (count.value > 1) {
      count.value--;
      Get.snackbar("Sory ye", "kurang dari 1");
    }
  }
}