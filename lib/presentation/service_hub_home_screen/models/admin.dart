import 'package:services_hub/presentation/service_hub_home_screen/models/serviceLocation.dart';

class Admin {
  int id;
  String name;
  String email;
  String image;
  ServiceLocation serviceLocation;

  Admin({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.serviceLocation,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        image: json['image'],
        serviceLocation: ServiceLocation.fromJson(json['service_location']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'image': image,
        'service_location': serviceLocation.toJson(),
      };
}
