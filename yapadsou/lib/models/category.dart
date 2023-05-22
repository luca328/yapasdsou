class Category {
  final String title;
  final String colorName;
  final String iconName;
  Category({
    required this.title,
    required this.colorName,
    required this.iconName,
  });
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      title: map["title"] ?? '',
      colorName: map["colorName"] ?? '',
      iconName: map["iconName"] ?? '',
    );
  }
}
