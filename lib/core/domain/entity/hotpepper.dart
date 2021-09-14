class HotPepper {
  final double? lat;
  final double? lng;
  final String? urls;
  final String? name;
  final String? logoImage;

  HotPepper({
    this.lat,
    this.lng,
    this.urls,
    this.name,
    this.logoImage,
  });

  factory HotPepper.fromjson(Map<String, dynamic> json) {
    if (json['lat'] != null &&
        json['lng'] != null &&
        json['urls']['pc'] != null &&
        json['name'] != null &&
        json['logo_image'] != null) {
      HotPepper(
        lat: json['lat'],
        lng: json['lng'],
        urls: json['urls']['pc'],
        name: json['name'],
        logoImage: json['logo_image'],
      );
    } else {
      print('値が入っていません');
    }
    return HotPepper(
      lat: json['lat'],
      lng: json['lng'],
      urls: json['urls']['pc'],
      name: json['name'],
      logoImage: json['logo_image'],
    );
  }
}
