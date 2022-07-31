import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project_flutter_clean_architecture/controllers/main/main/main_controller.dart';
import 'package:getx_project_flutter_clean_architecture/ui/main/home/home_page.dart';
import 'package:logger/logger.dart';

import '../profile/profile_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
        builder: (logic) {
          return IndexedStack(
            index: logic.bottomNavBarItems.index,
            children:  [
              HomePage(),
              ProfilePage(),
            ],
          );
        },
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (logic) {
          return BottomNavigationBar(
            onTap: (newPage) {
              controller.updatePage(BottomNavBarItems.values[newPage]);
            },
            currentIndex: logic.bottomNavBarItems.index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                label: "Profile",
              ),
            ],
          );
        },
      ),
    );
  }
}
