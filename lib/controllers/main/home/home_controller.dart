import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;

  void increase() {
    number++;
    update();
  }

  void decrease() {
    number--;
    update();
  }
}
