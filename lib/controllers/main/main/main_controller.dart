import 'package:get/get.dart';

class MainController extends GetxController {
  BottomNavBarItems bottomNavBarItems = BottomNavBarItems.home;

  void updatePage(BottomNavBarItems newPage) {
    bottomNavBarItems = newPage;
    update();
  }
}

enum BottomNavBarItems {
  home,
  profile,
}
