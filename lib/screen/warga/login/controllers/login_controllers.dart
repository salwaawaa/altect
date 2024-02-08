import 'package:altect/common/controllers/app_controller.dart';
import 'package:altect/resources/databases/user_database.dart';
import 'package:altect/resources/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  AppController app = Get.find<AppController>();
  final GoTrueClient _auth = Supabase.instance.client.auth;
  final GetStorage _box = GetStorage();

  late TextEditingController email;
  late TextEditingController password;

  RxBool obscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  Future<void> login() async {
    try {
      AuthResponse response = await _auth.signInWithPassword(
          email: email.text, password: password.text);

      if (response.user != null) {
        UserModel? userModel = await UserDatabase().select(email: email.text);
        if (userModel != null) {
          print(userModel.toMap());
          await _box.write("user", userModel.toMap());

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
}
