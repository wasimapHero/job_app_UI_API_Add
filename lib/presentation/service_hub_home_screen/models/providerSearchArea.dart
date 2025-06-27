class ProviderServiceArea {
  int id;
  int userId;
  int stateId;
  int cityId;
  int areaId;
  String stateName;
  String cityName;
  String areaName;
  String postCode;
  String address;
  String? longitude;
  String? latitude;

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

  factory ProviderServiceArea.fromJson(Map<String, dynamic> json) =>
      ProviderServiceArea(
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

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'state_id': stateId,
        'city_id': cityId,
        'area_id': areaId,
        'state_name': stateName,
        'city_name': cityName,
        'area_name': areaName,
        'post_code': postCode,
        'address': address,
        'longitude': longitude,
        'latitude': latitude,
      };
}