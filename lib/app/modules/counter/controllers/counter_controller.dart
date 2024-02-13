import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  void increment() {
    if (counter.value >= 100) {
      Get.snackbar("error", "hayoh we ditambah");
    } else {
      counter.value++;
    }
  }

  void decrement() {
    if (counter.value >= 1) {
      Get.snackbar("error", "hayoh we dikurang");
    } else {
      counter.value--;
    }
  }
}
