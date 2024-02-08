import 'package:altect/screen/warga/bar/bar.dart';
import 'package:altect/screen/warga/bar/bindings/bar_bindings.dart';
import 'package:altect/screen/warga/home/bindings/home_bindings.dart';
import 'package:altect/screen/warga/home/home.dart';
import 'package:altect/screen/warga/jadwal_ronda/bindings/jadwal_bindings.dart';
import 'package:altect/screen/warga/jadwal_ronda/jadwal_ronda.dart';
import 'package:altect/screen/warga/login/bindings/login_bindings.dart';
import 'package:altect/screen/warga/login/login.dart';
import 'package:altect/screen/warga/profil/profil.dart';
import 'package:altect/screen/warga/splash_screen/bindings/splash_bindings.dart';
import 'package:altect/screen/warga/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../screen/warga/profil/bindings/profil_bindings.dart';

class AppRoutes {
  static const initial = "/splash_screen";

  static final routes = [
    GetPage(
      name: '/splash_screen',
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
      binding: HomeBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/login',
      page: () => Login(),
      binding: LoginBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/bar',
      page: () => Bar(),
      binding: BarBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/jadwal',
      page: () => Jadwal(),
      binding: JadwalBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/profil',
      page: () => Profil(),
      binding: ProfilBindings(),
      transition: Transition.noTransition,
    ),
  ];
}