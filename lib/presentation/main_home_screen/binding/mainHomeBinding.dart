import 'package:services_hub/presentation/main_home_screen/controller/bottomNavController.dart';

import '../../../core/app_export.dart';

/// A binding class for the AppNavigationScreen.
///
/// This class ensures that the AppNavigationController is created when the
/// AppNavigationScreen is first loaded.
class MainHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}
