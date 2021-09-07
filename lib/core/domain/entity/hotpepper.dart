class HotPepper {
  final int? lat;
  final int? lag;
  final String? urls;
  final String? name;
  final String? logoImage;

  HotPepper({
    this.lat,
    this.lag,
    this.urls,
    this.name,
    this.logoImage,
  });

  factory HotPepper.fromJson(Map<String, dynamic> json) {
    return HotPepper(
      lat: json['lat'],
      lag: json['lag'],
      urls: json['urls']['pc'],
      name: json['name'],
      logoImage: json['logo_image'],
    );
  }
}
