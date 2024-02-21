import 'package:get/get.dart';

import '../controllers/peran_controller.dart';

class PeranBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PeranController());
  }
}