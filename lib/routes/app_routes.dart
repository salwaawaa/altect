
import 'package:altect/screen/warga/bar/bar.dart';
import 'package:altect/screen/warga/bar/bindings/bar_bindings.dart';
import 'package:altect/screen/warga/home/bindings/home_bindings.dart';
import 'package:altect/screen/warga/home/home.dart';
import 'package:altect/screen/warga/jadwal_ronda/bindings/jadwal_bindings.dart';
import 'package:altect/screen/warga/jadwal_ronda/jadwal_ronda.dart';
import 'package:altect/screen/warga/auth/bindings/auth_bindings.dart';
import 'package:altect/screen/warga/auth/login.dart';
import 'package:altect/screen/warga/kebakaran/bindings/kebakaran_binding.dart';
import 'package:altect/screen/warga/kebakaran/kebakaran.dart';
import 'package:altect/screen/warga/pencurian/pencurian.dart';
import 'package:altect/screen/warga/profil/profil.dart';
import 'package:altect/screen/warga/splash_screen/bindings/splash_bindings.dart';
import 'package:altect/screen/warga/splash_screen/splash_screen.dart';
import 'package:altect/screen/warga/submit_pencurian/bindings/submit_binding.dart';
import 'package:altect/screen/warga/submit_pencurian/submit_pencurian.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../screen/warga/auth/register.dart';
import '../screen/warga/notifikasi/bindings/notifikasi_binding.dart';
import '../screen/warga/notifikasi/notifikasi.dart';
import '../screen/warga/pencurian/bindings/pencurian_binding.dart';
import '../screen/warga/profil/bindings/profil_bindings.dart';
import '../screen/warga/submit_kebakaran/bindings/submit_binding.dart';
import '../screen/warga/submit_kebakaran/submit_kebakaran.dart';

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
      binding: AuthBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/register',
      page: () => Register(),
      binding: AuthBindings(),
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
    GetPage(
      name: '/pencurian',
      page: () => Pencurian(),
      binding: PencurianBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/notifikasi',
      page: () => Notifikasi(),
      binding: NotifikasiBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/subpen',
      page: () => SubPen(),
      binding: SubPenBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/kebakaran',
      page: () => Kebakaran(),
      binding: KebakaranBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/subkeb',
      page: () => SubKeb(),
      binding: SubKebBindings(),
      transition: Transition.noTransition,
    ),
    // GetPage(
    //   name: '/peran',
    //   page: () => Peran(),
    //   binding: PeranBinding(),
    //   transition: Transition.noTransition,
    // ),
  ];

  // List<GetPage> adminRoutes = [
  //   GetPage(
  //     name: '/splash_admin',
  //     page: () => Splashmin(),
  //     binding: SplashminBinding(),
  //     transition: Transition.noTransition,
  //   ),
  //   GetPage(
  //     name: '/register_admin',
  //     page: () => Registermin(),
  //     binding: AuthminBindings(),
  //     transition: Transition.noTransition,
  //   ),
  //   GetPage(
  //     name: '/login_admin',
  //     page: () => Loginmin(),
  //     binding: AuthminBindings(),
  //     transition: Transition.noTransition,
  //   ),
  //   GetPage(
  //     name: '/utama',
  //     page: () => Utama(),
  //     binding: UtamaBinding(),
  //     transition: Transition.noTransition,
  //   ),
  // ];

  // String userInitialRoute = '/login_user';
  // String adminInitialRoute = '/login_admin';
  // static List<GetPage> getRoutesForRole(String role) {
  //   if (role == 'admin') {
  //     return adminRoutes;
  //   } else {
  //     return userRoutes;
  //   }
  // }
//}
}