import 'package:services_hub/presentation/service_hub_home_screen/models/providerSearchArea.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/serviceCategorySmall.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/service_category_model.dart';



class Provider {
  final int id;
  final String fullName;
  final String? image;
  final String averageRating;
  final dynamic totalServiceOrderCompleted;
  final dynamic totalJobOrderCompleted;
  final int reviewCount;
  final double orderCompletionRate;
  final double customerSatisfactionRate;
  final int verifiedStatus;
  final String lastSeen;
  final String? about;
  final List<String?> storeImages;
  final String? videoUrl;
  final String createdAt;
  final List<ServiceCategoryS> serviceCategories;
  final ProviderServiceArea? providerServiceArea;

  Provider({
    required this.id,
    required this.fullName,
    this.image,
    required this.averageRating,
    this.totalServiceOrderCompleted,
    this.totalJobOrderCompleted,
    required this.reviewCount,
    required this.orderCompletionRate,
    required this.customerSatisfactionRate,
    required this.verifiedStatus,
    required this.lastSeen,
    this.about,
    required this.storeImages,
    this.videoUrl,
    required this.createdAt,
    required this.serviceCategories,
    this.providerServiceArea,
  });

  factory Provider.fromJson(Map<String, dynamic> json) {
    return Provider(
      id: json['id'],
      fullName: json['full_name'],
      image: json['image'],
      averageRating: json['average_rating'].toString(),
      totalServiceOrderCompleted: json['total_service_order_completed'],
      totalJobOrderCompleted: json['total_job_order_completed'],
      reviewCount: json['review_count'] ?? 0,
      orderCompletionRate: (json['order_completion_rate'] ?? 0).toDouble(),
      customerSatisfactionRate: (json['customer_satisfaction_rate'] ?? 0).toDouble(),
      verifiedStatus: json['verified_status'],
      lastSeen: json['last_seen'],
      about: json['about'],
      storeImages: (json['store_images'] as List?)
    ?.where((e) => e != null)
    .map((e) => e.toString())
    .toList() ?? [],

      videoUrl: json['video_url'],
      createdAt: json['created_at'],
      serviceCategories: (json['service_categories'] as List?)
        ?.where((e) => e != null)
        .map((e) => ServiceCategoryS.fromJson(e as Map<String, dynamic>))
        .toList() ?? [],


      providerServiceArea: json['provider_service_area'] != null
          ? ProviderServiceArea.fromJson(json['provider_service_area'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
  return {
    'id': id,
    'full_name': fullName,
    'image': image,
    'average_rating': averageRating,
    'total_service_order_completed': totalServiceOrderCompleted,
    'total_job_order_completed': totalJobOrderCompleted,
    'review_count': reviewCount,
    'order_completion_rate': orderCompletionRate,
    'customer_satisfaction_rate': customerSatisfactionRate,
    'verified_status': verifiedStatus,
    'last_seen': lastSeen,
    'about': about,
    'store_images': storeImages,
    'video_url': videoUrl,
    'created_at': createdAt,
    'service_categories': serviceCategories.map((e) => e.toJson()).toList(),
    'provider_service_area': providerServiceArea?.toJson(),
  };
}

}
