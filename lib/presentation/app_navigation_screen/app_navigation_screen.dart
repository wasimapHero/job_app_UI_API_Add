import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: Center(
          child: _buildNavigationTile(
          context,
          screenTitle: "Go To HomePage",
          onTapScreenTitle: () => onTapScreenTitle(
              context, AppRoutes.mainHome),
        )
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNavigationTile(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 135, 187, 244)),
        onPressed: () {
          onTapScreenTitle?.call();
        },
        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    screenTitle,
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.title20RegularRoboto
                        .copyWith(color: Color(0XFF000000)),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0XFF343330),
                  )
                ],
              ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Get.toNamed(routeName);
  }
}
