
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controllers/splash_controllers.dart';

class SplashminBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashminController());
  }
}