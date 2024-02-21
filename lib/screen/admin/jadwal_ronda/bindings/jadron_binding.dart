import 'package:get/get.dart';

import '../controllers/jadron_controller.dart';

class JadronBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(JadronController());
  }
}