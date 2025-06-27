class ServiceLocation {
  final int id;
  final int adminId;
  final int stateId;
  final int cityId;
  final int areaId;
  final String address;
  final String postCode;
  final String latitude;
  final String longitude;

  ServiceLocation({
    required this.id,
    required this.adminId,
    required this.stateId,
    required this.cityId,
    required this.areaId,
    required this.address,
    required this.postCode,
    required this.latitude,
    required this.longitude,
  });

  factory ServiceLocation.fromJson(Map<String, dynamic> json) => ServiceLocation(
        id: json['id'],
        adminId: json['admin_id'],
        stateId: json['state_id'],
        cityId: json['city_id'],
        areaId: json['area_id'],
        address: json['address'],
        postCode: json['post_code'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'admin_id': adminId,
        'state_id': stateId,
        'city_id': cityId,
        'area_id': areaId,
        'address': address,
        'post_code': postCode,
        'latitude': latitude,
        'longitude': longitude,
      };

  Map<String, dynamic> toJson() {
  return {
    'id': id,
    'admin_id': adminId,
    'state_id': stateId,
    'city_id': cityId,
    'area_id': areaId,
    'address': address,
    'post_code': postCode,
    'latitude': latitude,
    'longitude': longitude,
  };
}
}
