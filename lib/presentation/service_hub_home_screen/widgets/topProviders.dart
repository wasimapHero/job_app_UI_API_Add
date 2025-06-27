import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/service_hub_home_screen/controller/service_hub_home_controller.dart';

class TopProviders extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
 TopProviders({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
                height: Get.height * 0.18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.providers.value.length,
                  itemBuilder: (context, index) {
                    final provider = controller.providers.value[index];
                    return _buildProviderCard(
                      provider.averageRating,
                      provider.fullName,
                      provider.serviceCategories.isNotEmpty
                          ? provider.serviceCategories[0].name!
                          : 'N/A',
                      provider.image ?? '',
                    );
                  },
                ),
              );
  }
    Widget _buildProviderCard(String rating, String name, String profession, String image) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(right: 22),
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
                      
                      borderRadius:
                          BorderRadius.all(Radius.circular(30)),
                      child: image.startsWith('https') ? Image.network(image,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover) : Image.asset('assets/icons/user.png',height: 60,),
                    ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 14, color: Colors.orange),
              SizedBox(width: 4),
              Text(rating, style: TextStyle(fontSize: 13)),
            ],
          ),
          Text(name, overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          Text(profession, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
  
}