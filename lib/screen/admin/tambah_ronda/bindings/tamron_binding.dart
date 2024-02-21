import 'package:get/get.dart';

import '../controllers/tamron_controller.dart';

class TamronBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TamronController());
  }
}
