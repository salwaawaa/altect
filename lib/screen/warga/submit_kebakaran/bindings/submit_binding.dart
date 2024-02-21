import 'package:get/get.dart';

import '../controllers/submit_controller.dart';

class SubKebBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SubKebController());
  }
}