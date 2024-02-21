import 'package:get/get.dart';

import '../controllers/editron_controller.dart';

class EditronBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditronController());
  }
}