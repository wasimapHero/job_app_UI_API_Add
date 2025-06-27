import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/service_hub_home_screen/controller/service_hub_home_controller.dart';

class CategoryIconList extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
 CategoryIconList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
                height: Get.height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.value.length,
                  itemBuilder: (context, index) {
                    final cat = controller.categories.value[index];
                    return _buildCategoryIcon(cat.image, cat.name);
                  },
                ),
              );
  }


    Widget _buildCategoryIcon(String iconPath, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(iconPath, ),
          ),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }

}