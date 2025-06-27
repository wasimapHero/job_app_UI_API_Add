import 'package:services_hub/presentation/service_hub_home_screen/models/providerAll.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/pagination.dart';

class ProviderListsList {
  List<Provider> providerLists;
  Pagination pagination;

  ProviderListsList({
    required this.providerLists,
    required this.pagination,
  });

  factory ProviderListsList.fromJson(Map<String, dynamic> json) =>
      ProviderListsList(
        providerLists: (json['provider_lists'] as List)
            .map((e) => Provider.fromJson(e))
            .toList(),
        pagination: Pagination.fromJson(json['pagination']),
      );

  Map<String, dynamic> toJson() => {
        'provider_lists': providerLists.map((e) => e.toJson()).toList(),
        'pagination': pagination.toJson(),
      };

  factory ProviderListsList.empty() => ProviderListsList(
        providerLists: [],
        pagination: Pagination.empty(),
      );
}