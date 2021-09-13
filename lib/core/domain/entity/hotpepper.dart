// class HotPepper {
//   final int? lat;
//   final int? lng;
//   final String? urls;
//   //urls 配列
//   final String? name;
//   final String? logoImage;

//   HotPepper({
//     this.lat = 0,
//     this.lng = 0,
//     this.urls = '',
//     this.name = '',
//     this.logoImage = '',
//   });

//   factory HotPepper.fromJson(Map<String, dynamic> json) {
//     final jsonResults = json['results'];
//     var resultsAvailable = jsonResults['results_returned'] ?? 1;
//     if (resultsAvailable > 50) {
//       resultsAvailable = 50;
//     }
//     for (var i in resultsAvailable - 1) {
//       if (jsonResults['shop'][i]['lat'] != '' &&
//           jsonResults['shop'][i]['lng'] != '' &&
//           jsonResults['shop'][i]['urls'] != '' &&
//           jsonResults['shop'][i]['name'] != '' &&
//           jsonResults['shop'][i]['logo_image'] != '') {
//         HotPepper(
//           lat: json['lat'],
//           lng: json['lng'],
//           urls: json['urls']['pc'],
//           name: json['name'],
//           logoImage: json['logo_image'],
//         );
//       } else {
//         print('値が入っていません');
//       }
//     }
//     return HotPepper(
//       lat: json['lat'],
//       lng: json['lng'],
//       urls: json['urls']['pc'],
//       name: json['name'],
//       logoImage: json['logo_image'],
//     );
//   }
// }

// class HotPepper {
//   Results? results;

//   HotPepper({this.results});

//   factory HotPepper.fromjson(Map<String, dynamic> json) {
//     return HotPepper(results: Results.fromjson(json['results']));
//   }
// }

// TODO:ここから下は使用するかもしれない
// class Results {
//   int? resultsAvailable;
//   int? resultsReturned;
//   List<ShopData>? shotData;

//   Results({
//     this.resultsAvailable,
//     this.resultsReturned,
//     this.shotData,
//   });

//   factory Results.fromjson(Map<String, dynamic> json) {
//     var list = json['shop'] as List;
//     List<ShopData> shopData = list.map((i) => ShopData.fromjson(i)).toList();

//     return Results(
//       resultsAvailable: json['results_available'],
//       resultsReturned: json['results_returned'],
//       shotData: shopData,
//     );
//   }
// }

class ShopData {
  final double? lat;
  final double? lng;
  Urls? urls;
  //urls 配列
  final String? name;
  final String? logoImage;

  ShopData({
    this.lat,
    this.lng,
    this.urls,
    this.name,
    this.logoImage,
  });

  factory ShopData.fromjson(Map<String, dynamic> json) {
    return ShopData(
      lat: json['lat'],
      lng: json['lng'],
      urls: Urls.fromjson(json['urls']),
      name: json['name'],
      logoImage: json['logo_image'],
    );
  }
}

class Urls {
  final String? pc;

  Urls({this.pc});

  factory Urls.fromjson(Map<String, dynamic> json) {
    return Urls(
      pc: json['pc'],
    );
  }
}
