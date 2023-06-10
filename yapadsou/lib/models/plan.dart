class Plan {
  final String title;
  final String subtitle;
  final String mainImage;
  final String logo;
  Plan({
    required this.title,
    required this.subtitle,
    required this.mainImage,
    required this.logo,
  });
  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      title: map["title"] ?? '',
      mainImage: map["main_image"] ?? '',
      subtitle: map["subtitle"] ?? '',
      logo: map["logo"] ?? '',
    );
  }
}
