class ProviderServiceArea {
  final int id;
  final int userId;
  final int stateId;
  final int cityId;
  final int areaId;
  final String stateName;
  final String cityName;
  final String areaName;
  final String postCode;
  final String address;
  final String? longitude;
  final String? latitude;

  ProviderServiceArea({
    required this.id,
    required this.userId,
    required this.stateId,
    required this.cityId,
    required this.areaId,
    required this.stateName,
    required this.cityName,
    required this.areaName,
    required this.postCode,
    required this.address,
    this.longitude,
    this.latitude,
  });

  factory ProviderServiceArea.fromJson(Map<String, dynamic> json) {
    return ProviderServiceArea(
      id: json['id'],
      userId: json['user_id'],
      stateId: json['state_id'],
      cityId: json['city_id'],
      areaId: json['area_id'],
      stateName: json['state_name'],
      cityName: json['city_name'],
      areaName: json['area_name'],
      postCode: json['post_code'],
      address: json['address'],
      longitude: json['longitude'],
      latitude: json['latitude'],
    );
  }
}