import 'package:get/get.dart';

import '../controllers/ronhar_contraller.dart';

class RonharBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RonharController());
  }
}