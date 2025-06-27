class Pagination {
  int total;
  int count;
  int perPage;
  int currentPage;
  int lastPage;
  String? nextPageUrl;
  String? prevPageUrl;

  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json['total'],
        count: json['count'],
        perPage: json['per_page'],
        currentPage: json['current_page'],
        lastPage: json['last_page'],
        nextPageUrl: json['next_page_url'],
        prevPageUrl: json['prev_page_url'],
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'count': count,
        'per_page': perPage,
        'current_page': currentPage,
        'last_page': lastPage,
        'next_page_url': nextPageUrl,
        'prev_page_url': prevPageUrl,
      };

  factory Pagination.empty() => Pagination(
        total: 0,
        count: 0,
        perPage: 0,
        currentPage: 0,
        lastPage: 0,
        nextPageUrl: null,
        prevPageUrl: null,
      );
}
