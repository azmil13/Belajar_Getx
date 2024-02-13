import 'package:get/get.dart';

class BottomMenuController extends GetxController {
  //TODO: Implement BottomMenuController

 var currentindex = 0.obs;

 void changePage(int index) {
  currentindex.value = index;
 }
}