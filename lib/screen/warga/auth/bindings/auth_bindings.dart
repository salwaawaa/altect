import 'package:get/get.dart';
import '../controllers/auth_controllers.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}