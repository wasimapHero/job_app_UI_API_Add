class ServiceCategoryS {
  final int id;
  final String? name;
  final String? image;

  ServiceCategoryS({
    required this.id,
    this.name,
    this.image,
  });

  factory ServiceCategoryS.fromJson(Map<String, dynamic> json) {
    return ServiceCategoryS(
      id: json['id'] ?? 0,
      name: json['name']?.toString(),
      image: json['image']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }
}
