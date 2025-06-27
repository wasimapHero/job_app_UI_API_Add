import 'package:services_hub/presentation/service_hub_home_screen/models/pagination.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/service.dart';

class AllServicesResponse {
  List<Service> allServices;
  Pagination pagination;

  AllServicesResponse({
    required this.allServices,
    required this.pagination,
  });

  factory AllServicesResponse.fromJson(Map<String, dynamic> json) =>
      AllServicesResponse(
        allServices: (json['all_services'] as List)
            .map((e) => Service.fromJson(e))
            .toList(),
        pagination: Pagination.fromJson(json['pagination']),
      );


}