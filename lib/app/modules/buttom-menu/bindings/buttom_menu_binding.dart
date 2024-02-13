import 'package:get/get.dart';

import '../controllers/buttom_menu_controller.dart';

class ButtomMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtomMenuController>(
      () => ButtomMenuController(),
    );
  }
}
