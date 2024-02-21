import 'package:altect/common/controllers/app_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class SplashminController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    ever(app.isAuthenticated, (_) => Get.offNamed('/splash_admin'));
    startTimer();
  }

  String isAuthenticated() => app.isAuthenticated.isTrue
      ? app.user().role == "admin"
          ? '/utama'
          : '/utama'
      : '/login_admin';

  void startTimer() => Future.delayed(const Duration(seconds: 2), () {
        GetStorage box = GetStorage();
        bool isFirstOpen = box.read("isFirstOpen") ?? true;
        print(isFirstOpen);

        Get.offNamed(isAuthenticated());
      });
}
