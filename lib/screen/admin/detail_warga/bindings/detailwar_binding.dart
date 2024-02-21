import 'package:get/get.dart';

import '../controllers/detailwar_contoller.dart';

class DetailwarBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailwarController());
  }
}