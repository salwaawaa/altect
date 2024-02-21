import 'package:get/get.dart';

import '../controllers/data_warga_controller.dart';

class DataWargaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DataWargaController());
  }
}