import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

abstract class HotPepperRepository {
  Future<List<HotPepper>> fetchRepositories();
}
// Future<List<HotPepperと順番に記述しないとエラーが発生した