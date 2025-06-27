import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:services_hub/presentation/service_hub_home_screen/models/category_Response.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/providerAll.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/allServiceResponse.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/providerLists_List_model.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/service.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/service_category_model.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/slider.dart';
import 'dart:convert';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var services = <Service>[].obs;
  var servicesList = <AllServicesResponse>[].obs;
  var sliders = <SliderModel>[].obs;
  var providers = <Provider>[].obs;
  var providerListsList = ProviderListsList.empty().obs;
  var categories = <ServiceCategory>[].obs;

  final scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchAllHomeData();
  }

  Future<void> fetchAllHomeData() async {
    isLoading.value = true;
    await Future.wait(
        [fetchServices(), fetchSliders(), fetchProviders(), fetchCategories()]);
    isLoading.value = false;
  }

  Future<void> fetchServices() async {
    try {
      final res = await http.get(
          Uri.parse('https://prohandy.xgenious.com/api/v1/service/featured'));
      print('Raw response of service res: ${res.statusCode}');

      if (res.statusCode == 200) {
        print('Raw response of service res: ${res.body}');

        // Extract all_services list and map to List<Service>
        final decoded = json.decode(res.body);

        if (decoded is Map<String, dynamic> &&
            decoded.containsKey('all_services')) {
          final allServicesRes = AllServicesResponse.fromJson(decoded);
          final all_services = allServicesRes.allServices;

          services.value = all_services;
          print('Total services fetched: ${all_services.length}');
        } else {
          Get.snackbar('No Services',
              decoded['message'] ?? 'No featured services found');
        }
      }
    } catch (e) {
      Get.snackbar('$e', 'Something went wrong while fetching services');
      print(e);
    }
  }

  Future<void> fetchCategories() async {
    isLoading.value = true;
    try {
      final response = await http
          .get(Uri.parse('https://prohandy.xgenious.com/api/v1/categories'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        final categoriesRes = CategoryResponse.fromJson(data);
        categories.value = categoriesRes.categories;
      } else {
        Get.snackbar(
            'Error', 'Failed to fetch categories: ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('Exception', 'Something went wrong: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchSliders() async {
    try {
      final res = await http
          .get(Uri.parse('https://prohandy.xgenious.com/api/v1/slider-lists'));
      if (res.statusCode == 200) {
        final body = json.decode(res.body);
        final sliderList = body['sliders'] as List<dynamic>;

        sliders.value = sliderList.map((x) => SliderModel.fromJson(x)).toList();
      } else {
        Get.snackbar('Error', 'Failed to fetch sliders (${res.statusCode})');
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong while fetching sliders');
    }
  }

  Future<void> fetchProviders() async {
    try {
      final response = await http.get(
          Uri.parse('https://prohandy.xgenious.com/api/v1/provider-lists'));
      if (response.statusCode == 200) {
        print('Raw response of provider res: ${response.body}');
        final decoded = json.decode(response.body);

        if (decoded is Map<String, dynamic> &&
            decoded.containsKey('provider_lists')) {
          final providerListRes = ProviderListsList.fromJson(decoded);
        providers.value = providerListRes.providerLists;

          print('Total providers fetched: ${providerListRes.providerLists.length}');
          print('providers.value :   \n ${providers.value[3].fullName}');
        } else {
          Get.snackbar('No Services',
              decoded['message'] ?? 'No featured services found');
        }

        
      } else {
        Get.snackbar(
            'Error', 'Failed to fetch provider list: ${response.statusCode}');
      }
    }on Exception catch (e) {
      print(e);
      Get.snackbar('${e}', 'Something went wrong while fetching providers');
    }
  }

//
}
