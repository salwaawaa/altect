// import 'package:altect/resources/models/user_model.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class AppController extends GetxController {
//   GetStorage box = GetStorage();
//   RxBool isAuthenticated = false.obs;

//   @override
//   void onInit() {
//     super.onInit();

//     authCheck();
//   }

//   void authCheck() {
//     if (box.read("admin") != null) {
//       isAuthenticated.value = true;
//     } else {
//       isAuthenticated.value = false;
//     }
//   }

//   UserModel user() {
//     return UserModel.fromMap(box.read("admin") as Map<String, dynamic>);
//   }
// }
import 'package:altect/resources/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../resources/models/admin_model.dart';

class AppController extends GetxController {
  GetStorage box = GetStorage();
  RxBool isAuthenticated = false.obs;

  @override
  void onInit() {
    super.onInit();

    authCheck();
    //auth2Check();
  }

  void authCheck() {
    if (box.read("user") != null) {
      isAuthenticated.value = true;
    } else {
      isAuthenticated.value = false;
    }
  }

  // void auth2Check() {
  //   if (box.read("admin") != null) {
  //     isAuthenticated.value = true;
  //   } else {
  //     isAuthenticated.value = false;
  //   }
  // }

  UserModel user() {
    return UserModel.fromMap(box.read("user") as Map<String, dynamic>);
  }

  // bool isAdmin() {
  //   // Mengembalikan true jika pengguna yang saat ini masuk adalah admin
  //   if (isAuthenticated.value) {
  //     UserModel currentUser = user();
  //     return currentUser.role == "admin";
  //   }
  //   return false;
  // }

  // AdminModel admin() {
  //   return AdminModel.fromMap(box.read("admin") as Map<String, dynamic>);
  // }

  // bool isAdmin() {
  //   // Mengembalikan true jika pengguna yang saat ini masuk adalah admin
  //   if (isAuthenticated.value) {
  //     UserModel currentUser = user();
  //     return currentUser.role == "admin";
  //   }
  //   return false;
  // }
}
