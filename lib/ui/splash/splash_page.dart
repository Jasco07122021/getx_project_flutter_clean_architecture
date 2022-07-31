import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (logic) {
        return Scaffold(
          body: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: Get.height * 0.5,
              width: Get.width * 0.5,
            ),
          ),
        );
      },
    );
  }
}
