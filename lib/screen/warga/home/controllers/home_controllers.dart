import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var _currentTime = ''.obs; // Gunakan obs untuk membuat Rx variable

  String get currentTime => _currentTime.value; // Getter untuk nilai _currentTime

  @override
  void onInit() {
    super.onInit();
    _updateTime();
    // Timer untuk memperbarui waktu setiap detik
    Timer.periodic(Duration(seconds: 1), (timer) => _updateTime());
  }

  void _updateTime() {
    _currentTime.value = _getCurrentTime();
  }

  String _getCurrentTime() {
    DateTime now = DateTime.now();
    String formattedTime =
        "${_formatTimeComponent(now.hour)}:${_formatTimeComponent(now.minute)}:${_formatTimeComponent(now.second)}";
    return formattedTime;
  }

  String _formatTimeComponent(int timeComponent) {
    return timeComponent < 10 ? '0$timeComponent' : '$timeComponent';
  }
}
