import 'package:get/get.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NotifikasiController());
  }
}