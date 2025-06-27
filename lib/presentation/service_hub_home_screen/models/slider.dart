class SliderModel {
  final int id;
  final String image;
  final String? title;
  final String? subtitle;

  SliderModel({
    required this.id,
    required this.image,
    this.title,
    this.subtitle,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        id: json['id'],
        image: json['image'] ?? '',
        title: json['title'],
        subtitle: json['subtitle'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'title': title,
        'subtitle': subtitle,
      };

  factory SliderModel.empty() => SliderModel(id: 0, image: '', title: '', subtitle: '');
}