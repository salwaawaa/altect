import 'package:altect/resources/databases/pencurian_database.dart';
import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';

class SubPenController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getPencurian();
  }

  List<Map<String, dynamic>> pencurian = [];

  void getPencurian() async {
    List<Map<String, dynamic>> result =
        await PencurianDatabase().select(id: app.user().id!);
    if (result.isNotEmpty) {
      pencurian.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }
}
