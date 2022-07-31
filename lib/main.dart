import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project_flutter_clean_architecture/bindings/splash_bindings.dart';
import 'package:getx_project_flutter_clean_architecture/routes/app_pages.dart';
import 'package:getx_project_flutter_clean_architecture/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SplashBindings(),
      initialRoute: AppRoutes.initial,
      getPages: AppPages.pages,
    );
  }
}
