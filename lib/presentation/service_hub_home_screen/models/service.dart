import 'package:services_hub/presentation/service_hub_home_screen/models/admin.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/category.dart';
import 'package:services_hub/presentation/service_hub_home_screen/models/staff.dart';

class Service {
  final int id;
  final Category category;
  final Category? subCategory;
  final Category? childCategory;
  final String title;
  final String slug;
  final String? unit;
  final int price;
  final int discountPrice;
  final int isFeatured;
  final String image;
  final int view;
  final int soldCount;
  final int status;
  final int isPublished;
  final int allocateStaff;
  final DateTime createdAt;
  final int totalReviews;
  final String averageRating;
  final dynamic provider; // You can replace with actual Provider model if needed
  final Admin? admin;
  final List<Staff>? staffs;

  Service({
    required this.id,
    required this.category,
    this.subCategory,
    this.childCategory,
    required this.title,
    required this.slug,
    this.unit,
    required this.price,
    required this.discountPrice,
    required this.isFeatured,
    required this.image,
    required this.view,
    required this.soldCount,
    required this.status,
    required this.isPublished,
    required this.allocateStaff,
    required this.createdAt,
    required this.totalReviews,
    required this.averageRating,
    this.provider,
    this.admin,
    this.staffs,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json['id'],
        category: Category.fromJson(json['category']),
        subCategory: json['sub_category'] != null ? Category.fromJson(json['sub_category']) : null,
        childCategory: json['child_category'] != null ? Category.fromJson(json['child_category']) : null,
        title: json['title'],
        slug: json['slug'],
        unit: json['unit'],
        price: json['price'],
        discountPrice: json['discount_price'],
        isFeatured: json['is_featured'],
        image: json['image'],
        view: json['view'],
        soldCount: json['sold_count'],
        status: json['status'],
        isPublished: json['is_published'],
        allocateStaff: json['allocate_staff'],
        createdAt: DateTime.parse(json['created_at']),
        totalReviews: json['total_reviews'],
        averageRating: json['average_rating'],
        provider: json['provider'], // replace with Provider.fromJson if needed
        admin: json['admin'] != null ? Admin.fromJson(json['admin']) : null,
        staffs: json['staffs'] != null
            ? List<Staff>.from(json['staffs'].map((x) => Staff.fromJson(x)))
            : [],
      );
}
