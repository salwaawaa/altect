import 'dart:io';

import 'package:altect/common/controllers/app_controller.dart';
import 'package:altect/resources/databases/kebakaran_database.dart';
import 'package:altect/resources/models/kebakaran_model.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class KebakaranController extends GetxController {
  AppController app = Get.find<AppController>();

  var selectedItem = 'Lokasi Saya'.obs;
  List<String> items = [
    'Lokasi Saya'
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
      var result = await KebakaranDatabase().insert(
          model: KebakaranModel(
              userId: app.user().id!,
              locationId: selectedItem.value == 'Sukarame'
                  ? 1
                  : selectedItem.value == 'Cangkuang'
                      ? 2
                      : selectedItem.value == 'Lampegan'
                          ? 3
                          : 4,
              photo: urlImage));

      Get.toNamed('/subkeb', arguments: result[0]);
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
          await Supabase.instance.client.storage.from('kebakaran').upload(
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
