import 'package:altect/common/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../resources/databases/admin_database.dart';
import '../../../../resources/models/admin_model.dart';

class AuthminController extends GetxController {
  AppController app = Get.find<AppController>();
  final GoTrueClient _auth = Supabase.instance.client.auth;
  final GetStorage _box = GetStorage();

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController nama;

  RxBool obscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    nama = TextEditingController();
  }

  Future<void> signup() async {
    print('daftar');
    try {
      AuthResponse response =
          await _auth.signUp(email: email.text, password: password.text);

      if (response.user != null) {
        AdminModel adminModel = AdminModel(
          email: email.text,
          password: password.text,
          nama: nama.text,
          role: "admin",
          createdAt: DateTime.now().toIso8601String(),
        );

        var result = await AdminDatabase().insert(adminModel: adminModel);
        AdminModel adminModelNew = AdminModel.fromMap(result[0]);
        await _box.write("admin", adminModelNew.toMap());

        app.isAuthenticated.value = true;
      } else {
        print("Daftar Gagal");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> login() async {
    try {
      AuthResponse response = await _auth.signInWithPassword(
          email: email.text, password: password.text);

      if (response.user != null) {
        AdminModel? adminModel = await AdminDatabase().select(email: email.text);
        if (adminModel != null) {
          print(adminModel.toMap());
          await _box.write("admin", adminModel.toMap());

          app.isAuthenticated.value = true;
          showNotification("Login Berhasil", Colors.green);
        } else {
          showNotification("User tidak ditemukan", Colors.red);
        }
      } else {
        showNotification("Password salah", Colors.red);
      }
    } catch (e) {
      showNotification("Email atau Password salah", Colors.red);
    }
  }

  void showNotification(String message, Color color) {
    Get.snackbar("Notifikasi", message,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
        backgroundColor: color,
        colorText: Colors.white);
  }
//   Future<void> signup() async {
//   print('daftar');
//   try {
//     AuthResponse response = await _auth.signUp(email: email.text, password: password.text);

//     if (response.user != null) {
//       // Tentukan peran pengguna sesuai kebutuhan, misalnya berdasarkan input dari pengguna
//       String role = "user"; // Default peran adalah "user"
//       if (role == "admin") {
//         role = "admin";
//       }

//       UserModel userModel = UserModel(
//         email: email.text,
//         password: password.text,
//         nama: nama.text,
//         alamat: alamat.text,
//         role: role, // Simpan peran pengguna
//         createdAt: DateTime.now().toIso8601String(),
//       );

//       var result = await UserDatabase().insert(userModel: userModel);
//       UserModel userModelNew = UserModel.fromMap(result[0]);
//       await _box.write("user", userModelNew.toMap());

//       app.isAuthenticated.value = true;
//     } else {
//       print("Daftar Gagal");
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// Future<void> login() async {
//   try {
//     AuthResponse response = await _auth.signInWithPassword(email: email.text, password: password.text);

//     if (response.user != null) {
//       UserModel? userModel = await UserDatabase().select(email: email.text);
//       if (userModel != null) {
//         print(userModel.toMap());
//         await _box.write("user", userModel.toMap());

//         if (userModel.role == "admin") {
//           Get.offNamed('/utama');
//         } else {
//           app.isAuthenticated.value = true;
//           showNotification("Login Berhasil", Colors.green);
//         }
//       } else {
//         showNotification("User tidak ditemukan", Colors.red);
//       }
//     } else {
//       showNotification("Password salah", Colors.red);
//     }
//   } catch (e) {
//     showNotification("Email atau Password salah", Colors.red);
//   }
// }


// class AuthController extends GetxController {
//   AppController app = Get.find<AppController>();
//   final GoTrueClient _auth = Supabase.instance.client.auth;
//   final GetStorage _box = GetStorage();

//   late TextEditingController email;
//   late TextEditingController password;
//   late TextEditingController nama;
//   late TextEditingController alamat;
//   late String selectedRole;

//   RxBool obscureText = false.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     email = TextEditingController();
//     password = TextEditingController();
//     nama = TextEditingController();
//     alamat = TextEditingController();
//     RxString selectedRole = RxString('user');
//   }

//   Future<void> signup() async {
//     print('daftar');
//     try {
//       AuthResponse response =
//           await _auth.signUp(email: email.text, password: password.text);

//       if (response.user != null) {
//         // Saat mendaftar, tetapkan peran pengguna sebagai "user" secara default
//         UserModel userModel = UserModel(
//           email: email.text,
//           password: password.text,
//           nama: nama.text,
//           alamat: alamat.text,
//           role: selectedRole, // Tetapkan peran sebagai "user"
//           createdAt: DateTime.now().toIso8601String(),
//         );

//         var result = await UserDatabase().insert(userModel: userModel);
//         UserModel userModelNew = UserModel.fromMap(result[0]);
//         await _box.write(" ", userModelNew.toMap());

//         app.isAuthenticated.value = true;
//       } else {
//         print("Daftar Gagal");
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future<void> login() async {
//     try {
//       AuthResponse response = await _auth.signInWithPassword(
//           email: email.text, password: password.text);

//       if (response.user != null) {
//         // Setelah login, periksa peran pengguna
//         UserModel? userModel = await UserDatabase().select(email: email.text);
//         if (userModel != null) {
//           // Periksa peran pengguna dan arahkan ke halaman yang sesuai
//           if (userModel.role == "admin") {
//             // Pengguna adalah admin
//             // Arahkan ke halaman admin
//             Get.toNamed('/utama');
//           } else {
//             // Pengguna adalah pengguna biasa (user)
//             // Arahkan ke halaman pengguna biasa
//             Get.toNamed('/home');
//           }

//           // Lanjutkan proses autentikasi dan tampilkan notifikasi
//           app.isAuthenticated.value = true;
//           showNotification("Login Berhasil", Colors.green);
//         } else {
//           showNotification("User tidak ditemukan", Colors.red);
//         }
//       } else {
//         showNotification("Password salah", Colors.red);
//       }
//     } catch (e) {
//       showNotification("Email atau Password salah", Colors.red);
//     }
//   }

//   void showNotification(String message, Color color) {
//     Get.snackbar("Notifikasi", message,
//         snackPosition: SnackPosition.TOP,
//         duration: Duration(seconds: 2),
//         backgroundColor: color,
//         colorText: Colors.white);
//   }
}

