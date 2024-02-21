import 'dart:io';

import 'package:altect/resources/databases/pencurian_database.dart';
import 'package:altect/resources/models/pencurian_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../common/controllers/app_controller.dart';

class PencurianController extends GetxController {
  AppController app = Get.find<AppController>();
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('channel_id', 'channel_name',
            importance: Importance.max,
            priority: Priority.high,
            sound: RawResourceAndroidNotificationSound('alarm.mp3'));
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin
        .show(0, 'Title', 'Body', platformChannelSpecifics, payload: 'item x');
  }

  var selectedItem = 'Lokasi Saya'.obs;
  List<String> items = [
    'Lokasi Saya',
    'Sukarame',
    'Cangkuang',
    'Lampegan',
    'Paledang'
  ];

  Future<void> add() async {
    try {
      print(app.user().id);
      String urlImage = await uploadImage();
      print(urlImage);
      var result = await PencurianDatabase().insert(
          model: PencurianModel(
              userId: app.user().id!,
              locationId: selectedItem.value == 'Sukarame'
                  ? 1
                  : selectedItem.value == 'Cangkuang'
                      ? 2
                      : selectedItem.value == 'Lampegan'
                          ? 3
                          : 4,
              photo: urlImage));

      Get.toNamed('/subpen', arguments: result[0]);
      image = null;
    } catch (e) {
      print(e);
    }
  }

  File? image;

  Future<void> selectImage() async {
    final ImagePicker picker = ImagePicker();

    XFile? result = await picker.pickImage(source: ImageSource.camera);

    if (result != null) {
      image = File(result.path);
      refresh();
    } else {
      print("Gagal ambil gambar");
    }
  }

  Future<String> uploadImage() async {
    try {
      DateTime date = DateTime.now();
      String path =
          await Supabase.instance.client.storage.from('pencurian').upload(
                'cover_${date.day}${date.month}${date.year}${date.hour}${date.minute}${date.second}${date.microsecond}.png',
                image!,
                fileOptions: const FileOptions(
                  cacheControl: '3600',
                  upsert: false,
                ),
              );

      refresh();
      print(path);
      return path;
    } catch (e) {
      print(e.toString());

      return "";
    }
  }
}
