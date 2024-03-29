
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'controllers/splash_controllers.dart';

class Splashmin extends GetView<SplashminController> {
  const Splashmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 235, 242, 245),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/altect2.png',
              width: 378,
              height: 378,
            ),
          ],
        ),
      ),
    );
  }
}
