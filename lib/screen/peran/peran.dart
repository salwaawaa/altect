import 'package:altect/screen/peran/controllers/peran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Peran extends GetView<PeranController> {
  final PeranController homeController = Get.put(PeranController());
  final VoidCallback? onPeranSelected;

  Peran({Key? key, this.onPeranSelected}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Peran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/register_admin');
              },
              child: Text('Admin'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/register_user');
              },
              child: Text('User'),
            ),
          ],
        ),
      ),
    );
  }
}
