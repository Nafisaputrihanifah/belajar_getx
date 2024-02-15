// bottom_menu_view.dart
import 'package:belajar_getx/app/modules/home/views/home_view.dart';
import 'package:belajar_getx/app/modules/pasien/views/pasien_view.dart';
import 'package:belajar_getx/app/modules/profil/views/profil_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_menu_controller.dart';

class BottomMenuView extends StatelessWidget {
  final BottomMenuController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: [HomeView(), PasienView(), ProfilView()],
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changePage(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Pasien',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
