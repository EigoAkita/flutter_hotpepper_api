import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

abstract class HotPepperDatasource {
  Future<List<HotPepper>> fetchRepositories({required String searchText});
}
