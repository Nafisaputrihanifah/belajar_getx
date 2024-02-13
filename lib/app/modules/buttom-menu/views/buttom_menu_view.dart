import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buttom_menu_controller.dart';

class ButtomMenuView extends GetView<ButtomMenuController> {
  const ButtomMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtomMenuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ButtomMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
