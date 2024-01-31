import 'package:altect/screen/splash_screen/bindings/splash_bindings.dart';
import 'package:altect/screen/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoutes {
  static const initial = "/splash_screen";

  static final routes = [
    GetPage(
      name: '/splash_screen',
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
  ];
}