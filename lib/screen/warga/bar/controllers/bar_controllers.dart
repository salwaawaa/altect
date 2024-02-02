import 'package:altect/common/controllers/app_controller.dart';
import 'package:altect/screen/warga/home/home.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BarController extends GetxController {
  AppController app = Get.find<AppController>();

  RxInt currentIndex = 0.obs;

  final tabs = [
    Home(), 
    // Jadwal(), 
    // Profil()
    ];
}
