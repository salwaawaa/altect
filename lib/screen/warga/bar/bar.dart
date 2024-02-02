import 'package:altect/screen/warga/bar/controllers/bar_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bar extends GetView<BarController> {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.tabs[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
                backgroundColor: Color(0xFFBF3131)),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Jadwal Ronda',
                backgroundColor: Color(0xFFBF3131)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color(0xFFBF3131)),
          ],
          onTap: (index) {
            controller.currentIndex.value = index;
          },
        );
      }),
    );
  }
}
