import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/service_hub_home_screen/controller/service_hub_home_controller.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/adJobButton.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/appBarWidget.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/categoryIconList.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/imageCarousel.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/serviceCards.dart';
import 'package:services_hub/presentation/service_hub_home_screen/widgets/topProviders.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: _appBar()),
      body: SafeArea(
  child: Obx(() => controller.isLoading.value
      ? Center(child: CircularProgressIndicator())
      : RefreshIndicator(
          onRefresh: controller.fetchAllHomeData,
          child: ListView(
            controller: controller.scrollController,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.04,
              vertical: Get.height * 0.015,
            ),
            children: [
              SizedBox(height: Get.height * 0.005),

              // Category Icons
              CategoryIconList(),

              SizedBox(height: Get.height * 0.025),

              // Service Cards
              ServiceCards(),
              SizedBox(height: Get.height * 0.025),

              // Image Carousel
              ImageCarousel(),

              SizedBox(height: Get.height * 0.025),

              // Top Providers
              TopProviders(),

              SizedBox(height: Get.height * 0.025),

              // Big Ad Image with Post Job Button
              AdJobButton(),
              SizedBox(height: Get.height * 0.025),
            ],
          ),
        )),
)

    
    );
  }




  AppBar _appBar() {
    return AppBar(
          // backgroundColor: Colors.blueAccent,
          elevation: 0,
          flexibleSpace: AppBarWidget()
        
        );
      
  }
}
