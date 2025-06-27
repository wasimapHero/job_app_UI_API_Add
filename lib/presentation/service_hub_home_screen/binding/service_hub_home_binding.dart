import 'package:get/get.dart';
import '../controller/service_hub_home_controller.dart';
import '../../../core/app_export.dart';

class ServiceHubHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
