import 'package:altect/screen/warga/jadwal_ronda/controllers/jadwal_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class JadwalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(JadwalController());
  }
}