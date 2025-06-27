// bottom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/main_home_screen/controller/bottomNavController.dart';


class BottomNavBar extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<IconData> icons = [
    Icons.home,
    Icons.list_alt,
    Icons.notifications_none,
    Icons.work_outline,
    Icons.person_outline,
  ];

  final List<String> labels = ['Home', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: Get.height * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.black12, offset: Offset(0, -2))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(icons.length, (index) {
              bool isSelected = controller.currentIndex.value == index;
              return GestureDetector(
                onTap: () => controller.changeIndex(index),
                child: isSelected
                    ? Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.035,
                            vertical: Get.height * 0.01),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(Get.width * 0.05),
                        ),
                        child: Row(
                          children: [
                            Icon(icons[index],
                                color: Colors.white, size: Get.width * 0.05),
                            SizedBox(width: Get.width * 0.01),
                            Text(
                              labels[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * 0.035),
                            )
                          ],
                        ),
                      )
                    : Icon(icons[index],
                        color: Colors.black54, size: Get.width * 0.06),
              );
            }),
          ),
        ));
  }
}
