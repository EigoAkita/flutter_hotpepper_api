import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';

abstract class HotPepperRepository {
  Future<List<HotPepper>> fetchRepositories();
}
