import 'package:altect/screen/warga/bar/controllers/bar_controllers.dart';
import 'package:altect/screen/warga/home/controllers/home_controllers.dart';
import 'package:altect/screen/warga/jadwal_ronda/bindings/jadwal_bindings.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class BarBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(BarController());
    Get.put(HomeController());
    Get.put(JadwalBindings());
  }
}
