class ServiceCategory {
  int id;
  String name;
  String slug;
  String icon;
  String image;

  ServiceCategory({
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
    required this.image,
  });

  factory ServiceCategory.fromJson(Map<String, dynamic> json) => ServiceCategory(
        id: json['id'],
        name: json['name'],
        slug: json['slug'],
        icon: json['icon'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'icon': icon,
        'image': image,
      };
}