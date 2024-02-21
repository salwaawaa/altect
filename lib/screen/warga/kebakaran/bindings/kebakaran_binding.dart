import 'package:get/get.dart';

import '../controllers/kebakaran_controller.dart';

class KebakaranBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(KebakaranController());
  }
}
