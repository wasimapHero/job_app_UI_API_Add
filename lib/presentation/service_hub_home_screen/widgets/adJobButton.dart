import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdJobButton extends StatelessWidget {
const AdJobButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Get.width * 0.03),
                    child: Image.asset(
                      'assets/images/xgy1YOt-cherry-blossom-wallpaper.jpg',
                      height: Get.height * 0.26,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: Get.height * 0.02,
                    left: Get.width * 0.03,
                    child: SizedBox(
                      width: Get.width - Get.width * 0.12,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.08),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.018),
                        ),
                        child: Text(
                          "Post a Job",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
;
  }
}