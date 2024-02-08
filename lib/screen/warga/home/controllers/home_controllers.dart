import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var _currentTime = ''.obs; // Gunakan obs untuk membuat Rx variable
  var _currentDate = ''.obs; // Tambahkan variabel untuk tanggal

  String get currentTime => _currentTime.value; // Getter untuk nilai _currentTime
  String get currentDate => _currentDate.value; // Getter untuk nilai _currentDate

  @override
  void onInit() {
    super.onInit();
    _updateTime();
    _updateDate(); // Panggil fungsi untuk mengambil tanggal saat ini
    Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
      _updateDate(); // Update tanggal setiap detik
    });
  }

  void _updateTime() {
    _currentTime.value = _getCurrentTime();
  }

  void _updateDate() {
    _currentDate.value = _getCurrentDate();
  }

  String _getCurrentTime() {
    DateTime now = DateTime.now();
    return "${_formatTimeComponent(now.hour)}:${_formatTimeComponent(now.minute)}:${_formatTimeComponent(now.second)}";
  }

  String _getCurrentDate() {
    DateTime now = DateTime.now();
    String dayOfWeek = _getDayOfWeek(now.weekday); // Mendapatkan nama hari
    String monthName = _getMonthName(now.month); // Mendapatkan nama bulan
    return "$dayOfWeek, ${now.day} $monthName ${now.year}";
  }

  String _formatTimeComponent(int timeComponent) {
    return timeComponent < 10 ? '0$timeComponent' : '$timeComponent';
  }

  String _getDayOfWeek(int dayIndex) {
    switch (dayIndex) {
      case 1:
        return 'Senin';
      case 2:
        return 'Selasa';
      case 3:
        return 'Rabu';
      case 4:
        return 'Kamis';
      case 5:
        return 'Jumat';
      case 6:
        return 'Sabtu';
      case 7:
        return 'Minggu';
      default:
        return '';
    }
  }

  String _getMonthName(int monthIndex) {
    switch (monthIndex) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return '';
    }
  }
}
