import 'package:flutter/material.dart';
import 'package:services_hub/core/utils/format_date.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/service.dart';

class ServiceCardWidget extends StatelessWidget {
  final Service serviceCard;
  final VoidCallback onTap;

  ServiceCardWidget({
    required Key key,
    required this.onTap,
    required this.serviceCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 181.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: appTheme.colorFFFAF4,
          border: Border.all(color: appTheme.colorFFA9A8),
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: serviceCard.image,
              height: 91.h,
              width: 152.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 15.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  serviceCard.averageRating,
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.25),
                ),
                Text(
                  ' - ${FormateDateAndTime.getTimeAgo(serviceCard.createdAt.toIso8601String())}',
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.25),
                ),
                Text(
                  ' - ${serviceCard.category}',
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.25),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              serviceCard.title,
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Text(
                  '\$ ${serviceCard.price.toString()}',
                  style: TextStyleHelper.instance.body12SemiBold
                      .copyWith(height: 1.25),
                ),
                SizedBox(width: 8.h),
                Text(
                  '\$ ${serviceCard.discountPrice.toString()}',
                  style: TextStyleHelper.instance.body12.copyWith(
                    color: appTheme.colorFF5D5A,
                    height: 1.25,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Container(
              height: 1.h,
              width: double.infinity,
              color: appTheme.colorFFB0B0,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                CustomImageView(
                  imagePath: serviceCard.image,
                  height: 22.h,
                  width: 22.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 12.h),
                Text(
                  serviceCard.provider!.fullName,
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
