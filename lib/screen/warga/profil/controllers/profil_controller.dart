import 'package:altect/common/controllers/app_controller.dart';
import 'package:altect/resources/databases/user_database.dart';
import 'package:get/get.dart';

class ProfilController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getUsers();
  }

  List<Map<String, dynamic>> users = [];

  void getUsers() async {
    List<Map<String, dynamic>> result = await UserDatabase().selectAll();
    if (result.isEmpty) {
      users.addAll(result);

      refresh();
    } else {
      print('Tidak ada users');
    }
  }
}
