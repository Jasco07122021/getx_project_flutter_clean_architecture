import 'package:get/get.dart';
import 'package:getx_project_flutter_clean_architecture/controllers/main/home/home_controller.dart';
import 'package:getx_project_flutter_clean_architecture/controllers/main/main/main_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController(),fenix: true);
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
