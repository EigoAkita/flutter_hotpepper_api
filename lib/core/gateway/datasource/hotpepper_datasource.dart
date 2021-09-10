import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

abstract class HotpepperDatasource {
  Future<List<HotPepper>> fetchRepositories();
}
