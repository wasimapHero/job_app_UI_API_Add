import 'package:services_hub/presentation/main_home_screen/binding/mainHomeBinding.dart';
import 'package:services_hub/presentation/main_home_screen/mainHome.dart';

import '../core/app_export.dart';
import 'package:get/get.dart';
import '../presentation/service_hub_home_screen/service_hub_home_screen.dart';

import '../presentation/service_hub_home_screen/binding/service_hub_home_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String serviceHubHomeScreen = '/service_hub_home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String mainHome = '/mainHome';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mainHome,
      page: () => MainHome(),
      bindings: [MainHomeBinding()],
    ),
    GetPage(
      name: serviceHubHomeScreen,
      page: () => HomePage(),
      bindings: [ServiceHubHomeBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
  ];
}
