import 'package:get/get.dart';

import '../controllers/pencurian_controller.dart';

class PencurianBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PencurianController());
  }
}