// main_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/main_home_screen/controller/bottomNavController.dart';
import 'package:services_hub/presentation/service_hub_home_screen/service_hub_home_screen.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/bottomNavbar.dart';


class MainHome extends StatelessWidget {
  final BottomNavController controller = Get.find();

  final List<Widget> pages = [
    HomePage(),
    Center(child: Text("List")),
    Center(child: Text("Notifications")),
    Center(child: Text("Work")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.currentIndex.value],
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
