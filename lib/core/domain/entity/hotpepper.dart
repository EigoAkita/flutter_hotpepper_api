class HotPepper {
  final int? lat;
  final int? lag;
  final String? urls;
  final String? name;
  final String? logoImage;

  HotPepper({
    this.lat = 0,
    this.lag = 0,
    this.urls = '',
    this.name = '',
    this.logoImage = '',
  });

  factory HotPepper.fromJson(Map<String, dynamic> json) {
    final jsonResults = json['results'];
    var resultsAvailable = jsonResults['results_returned'] ?? 1;
    if (resultsAvailable > 50) {
      resultsAvailable = 50;
    }
    for (var i in resultsAvailable - 1) {
      if (jsonResults['shop'][i]['lat'] != '' &&
          jsonResults['shop'][i]['lng'] != '' &&
          jsonResults['shop'][i]['urls'] != '' &&
          jsonResults['shop'][i]['name'] != '' &&
          jsonResults['shop'][i]['logo_image'] != '') {
        HotPepper(
          lat: json['lat'],
          lag: json['lng'],
          urls: json['urls']['pc'],
          name: json['name'],
          logoImage: json['logo_image'],
        );
      } else {
        print('値が入っていません');
      }
    }
    return HotPepper(
      lat: json['lat'],
      lag: json['lng'],
      urls: json['urls']['pc'],
      name: json['name'],
      logoImage: json['logo_image'],
    );
  }
}
