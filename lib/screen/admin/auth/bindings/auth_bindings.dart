import 'package:get/get.dart';
import '../controllers/auth_controllers.dart';

class AuthminBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthminController());
  }
}