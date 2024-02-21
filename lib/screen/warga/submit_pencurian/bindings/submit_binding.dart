import 'package:get/get.dart';

import '../controllers/submit_controller.dart';

class SubPenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SubPenController());
  }
}