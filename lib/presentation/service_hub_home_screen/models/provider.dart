class ProviderModel {
  int id;
  String fullName;
  String image;
  int reviewCount;
  String averageRating;
  double orderCompletionRate;
  double customerSatisfactionRate;
  int verifiedStatus;
  DateTime lastSeen;
  DateTime createdAt;
  String longitude;
  String latitude;

  ProviderModel({
    required this.id,
    required this.fullName,
    required this.image,
    required this.reviewCount,
    required this.averageRating,
    required this.orderCompletionRate,
    required this.customerSatisfactionRate,
    required this.verifiedStatus,
    required this.lastSeen,
    required this.createdAt,
    required this.longitude,
    required this.latitude,
  });

  factory ProviderModel.fromJson(Map<String, dynamic> json) => ProviderModel(
        id: json['id'],
        fullName: json['full_name'],
        image: json['image'] ?? '',
        reviewCount: json['review_count'],
        averageRating: json['average_rating'],
        orderCompletionRate: (json['order_completion_rate'] is int)
            ? (json['order_completion_rate'] as int).toDouble()
            : (json['order_completion_rate'] ?? 0).toDouble(),
        customerSatisfactionRate: (json['customer_satisfaction_rate'] is int)
            ? (json['customer_satisfaction_rate'] as int).toDouble()
            : (json['customer_satisfaction_rate'] ?? 0).toDouble(),
        verifiedStatus: json['verified_status'],
        lastSeen: DateTime.parse(json['last_seen']),
        createdAt: DateTime.parse(json['created_at']),
        longitude: json['longitude'] ?? '',
        latitude: json['latitude'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
        'image': image,
        'review_count': reviewCount,
        'average_rating': averageRating,
        'order_completion_rate': orderCompletionRate,
        'customer_satisfaction_rate': customerSatisfactionRate,
        'verified_status': verifiedStatus,
        'last_seen': lastSeen.toIso8601String(),
        'created_at': createdAt.toIso8601String(),
        'longitude': longitude,
        'latitude': latitude,
      };
}
