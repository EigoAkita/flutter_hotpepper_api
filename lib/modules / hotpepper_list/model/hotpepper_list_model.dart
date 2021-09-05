import 'package:flutter/services.dart';
import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

class HotPepperListModel {
  final int? lat;
  final int? lag;
  final String? urls;
  final String? name;
  final String? logoImage;

  HotPepperListModel._({
    required this.lat,
    required this.lag,
    required this.urls,
    required this.name,
    required this.logoImage,
  });

  factory HotPepperListModel.from(HotPepper hotPepper) {
    return HotPepperListModel._(
      lat: hotPepper.lat,
      lag: hotPepper.lag,
      urls: hotPepper.urls,
      name: hotPepper.name,
      logoImage: hotPepper.logoImage,
    );
  }
}
