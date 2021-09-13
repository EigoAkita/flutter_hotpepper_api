import 'package:flutter/foundation.dart';
import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

class HotPepperListModel {
  final double? lat;
  final double? lng;
  final Urls? urls;
  final String? name;
  final String? logoImage;

  HotPepperListModel._({
    required this.lat,
    required this.lng,
    required this.urls,
    required this.name,
    required this.logoImage,
  });

  factory HotPepperListModel.from(ShopData shopData) {
    return HotPepperListModel._(
      lat: shopData.lat,
      lng: shopData.lng,
      urls: shopData.urls,
      name: shopData.name,
      logoImage: shopData.logoImage,
    );
  }
}
