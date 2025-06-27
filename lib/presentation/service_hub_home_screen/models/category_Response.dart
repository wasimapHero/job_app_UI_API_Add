import 'package:services_hub/presentation/service_hub_home_screen/models/pagination.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/service_category_model.dart';

class CategoryResponse {
  List<ServiceCategory> categories;
  Pagination pagination;

  CategoryResponse({
    required this.categories,
    required this.pagination,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
        categories: (json['categories'] as List)
            .map((e) => ServiceCategory.fromJson(e))
            .toList(),
        pagination: Pagination.fromJson(json['pagination']),
      );

  Map<String, dynamic> toJson() => {
        'categories': categories.map((e) => e.toJson()).toList(),
        'pagination': pagination.toJson(),
      };
}
