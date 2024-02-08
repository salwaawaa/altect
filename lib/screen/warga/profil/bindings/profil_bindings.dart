import 'package:get/get.dart';
import '../controllers/profil_controller.dart';

class ProfilBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfilController());
  }
}