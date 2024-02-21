import 'package:get/get.dart';

import '../controllers/tambahwar_controller.dart';

class TambahwarBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TambahwarController());
  }
}