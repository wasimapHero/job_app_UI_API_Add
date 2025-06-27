class Staff {
  final int id;
  final int? providerId;
  final int? adminId;
  final String fullname;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String about;
  final int status;
  final String? image;

  Staff({
    required this.id,
    this.providerId,
    this.adminId,
    required this.fullname,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.about,
    required this.status,
    this.image,
  });

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        id: json['id'],
        providerId: json['provider_id'],
        adminId: json['admin_id'],
        fullname: json['fullname'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        phone: json['phone'],
        about: json['about'],
        status: json['status'],
        image: json['image'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'provider_id': providerId,
        'admin_id': adminId,
        'fullname': fullname,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone': phone,
        'about': about,
        'status': status,
        'image': image,
      };

  Map<String, dynamic> toJson() {
  return {
    'id': id,
    'provider_id': providerId,
    'admin_id': adminId,
    'fullname': fullname,
    'first_name': firstName,
    'last_name': lastName,
    'email': email,
    'phone': phone,
    'about': about,
    'status': status,
    'image': image,
  };
}

}
