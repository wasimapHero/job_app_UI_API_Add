import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/service_hub_home_screen/controller/service_hub_home_controller.dart';

class ImageCarousel extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
 ImageCarousel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
                height: Get.height * 0.17,
                child: PageView.builder(
                  itemCount: controller.sliders.value.length,
                  itemBuilder: (context, index) => _buildCarouselImage(
                      controller.sliders.value[index].image),
                ),
              );
  }

  
  Widget _buildCarouselImage(String path) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(path,
        height: 30,
            fit: BoxFit.cover,
            errorBuilder: (c, e, s) => Icon(Icons.image_not_supported)),
      ),
    );
  }

}