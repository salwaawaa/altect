
import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/kebakaran_database.dart';

class SubKebController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getKebakaran();
  }

  List<Map<String, dynamic>> pencurian = [];

  void getKebakaran() async {
    List<Map<String, dynamic>> result =
        await KebakaranDatabase().select(id: app.user().id!);
    if (result.isNotEmpty) {
      pencurian.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }
}
