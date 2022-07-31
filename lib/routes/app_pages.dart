import 'package:get/get.dart';
import 'package:getx_project_flutter_clean_architecture/bindings/main_bindings.dart';
import 'package:getx_project_flutter_clean_architecture/routes/app_routes.dart';

import '../bindings/splash_bindings.dart';
import '../ui/main/main/main_page.dart';
import '../ui/splash/splash_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBindings(),
    ),
    // GetPage(
    //   name: AppRoutes.internetConnection,
    //   page: () => const InternetConnectionPage(),
    // ),
  ];
}
