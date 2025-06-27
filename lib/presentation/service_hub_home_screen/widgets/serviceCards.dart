import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_hub/presentation/service_hub_home_screen/controller/service_hub_home_controller.dart';

class ServiceCards extends StatelessWidget {
    final HomeController controller = Get.put(HomeController());
 ServiceCards({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
                height: Get.height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.services.value.length,
                  itemBuilder: (context, index) {
                    final service = controller.services.value[index];
                    final adminName = service.admin?.name;
                    final shortName = (adminName != null && adminName.length > 12)
                        ? adminName.substring(0, 12)
                        : adminName;
                    return _buildServiceCard(
                      service.image ?? '',
                      service.averageRating ?? '0.0',
                      '1 hr',
                      service.category?.name ?? 'N/A',
                      service.title ?? '',
                      "\$${service.price ?? 0}",
                      "\$${service.discountPrice?.toString() ?? '0'}",
                      service.admin?.image ?? '',
                      shortName ?? '---',
                    );
                  },
                ),
              )
;
  }

    Widget _buildServiceCard(
      String path,
      String rating,
      String time,
      String profession,
      String title,
      String price,
      String disPrice,
      String userImage,
      String userName) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 245, 245, 245),
        border: Border.all(width: 1, color: Colors.grey.shade400),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(path,
                height: 100, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Expanded(
                      child: Text(" $rating  -  $time  -  $profession",
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                SizedBox(
                  height: 35,
                  child: Text(title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ),
                SizedBox(height: 4),
                Text("$price $disPrice",
                    style: TextStyle(color: Colors.green, fontSize: 12)),
                SizedBox(height: 4),
                Row(
                  children: [
                    ClipRRect(
                      
                      borderRadius:
                          BorderRadius.all(Radius.circular(6)),
                      child: userImage.startsWith('https') ? Image.network(userImage,
                          height: 23,
                          width: 23,
                          fit: BoxFit.cover) : Image.asset('assets/icons/user.png',height: 23,),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      // or Flexible
                      child: Text(
                        userName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}