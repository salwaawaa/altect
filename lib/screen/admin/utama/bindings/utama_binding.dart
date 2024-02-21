import 'package:get/get.dart';

import '../controllers/utama_controller.dart';

class UtamaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UtamaController());
  }
}