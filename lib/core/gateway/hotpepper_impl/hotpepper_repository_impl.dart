import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';
import 'package:practice_riverpod/core/domain/repository/hotpepper_repository.dart';
import 'package:practice_riverpod/core/gateway/datasource/hotpepper_datasource.dart';

class HotPepperRepositoryImpl implements HotPepperRepository {
  final HotPepperDatasource _datasource;
  HotPepperRepositoryImpl(this._datasource);

  @override
  Future<List<HotPepper>> fetchRepositories({required String searchText}) {
    return _datasource.fetchRepositories(searchText: searchText);
  }
}
