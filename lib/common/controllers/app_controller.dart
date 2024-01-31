import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppController extends GetxController {
  GetStorage box = GetStorage();
  RxBool isAuthenticated = false.obs;
}