import 'package:altect/common/bindings/app_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jypdmywxczkrwprbnolv.supabase.co',
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp5cGRteXd4Y3prcndwcmJub2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYyNTM0ODIsImV4cCI6MjAyMTgyOTQ4Mn0.sJxL5mqZVCotEZTLj6stkZNJR1i7gQG4BizUau1Bnxw",
  );
  await GetStorage.init();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //bool isUser = true;
    //String userRole = 'admin';
    return GetMaterialApp(
      title: 'Altect',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.initial,
      initialBinding: AppBinding(),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Get.defaultTransitionDuration,
      // initialRoute: determineFirstRoute(),
      // getPages: [
      //   GetPage(name: '/splash', page: () => Splash()),
      //   GetPage(name: '/peran', page: () => Peran()),
      // ],
      // // ignore: dead_code
      // getPages: isUser ? userRoutes : adminRoutes,
      // // ignore: dead_code
      // initialRoute: isUser ? userInitialRoute : adminInitialRoute,
      // getPages: AppRoutes.getRoutesForRole(userRole),
      // initialRoute: AppRoutes.initial,
    );
  }
}