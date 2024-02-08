import 'package:get/get.dart';
import '../controllers/login_controllers.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}