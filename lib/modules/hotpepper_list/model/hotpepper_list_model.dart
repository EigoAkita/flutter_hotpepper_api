import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

class HotPepperListModel {
  final double? lat;
  final double? lng;
  final String? urls;
  final String? name;
  final String? logoImage;

  HotPepperListModel._({
    required this.lat,
    required this.lng,
    required this.urls,
    required this.name,
    required this.logoImage,
  });

  factory HotPepperListModel.from(HotPepper hotPepper) {
    return HotPepperListModel._(
      lat: hotPepper.lat,
      lng: hotPepper.lng,
      urls: hotPepper.urls,
      name: hotPepper.name,
      logoImage: hotPepper.logoImage,
    );
  }
}
