import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/core/domain/repository/hotpepper_repository.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_state.dart';
import 'package:practice_riverpod/modules/hotpepper_list/model/hotpepper_list_model.dart';

class HotPepperListController extends StateNotifier<HotPepperListState> {
  HotPepperListController(HotPepperRepository hotPepperRepository)
      : _hotPepperRepository = hotPepperRepository,
        super(const HotPepperListState());

  final HotPepperRepository _hotPepperRepository;

  Future<void> load({required String searchText}) async {
    if (searchText.isNotEmpty) {
      final hotPepperList =
          await _hotPepperRepository.fetchRepositories(searchText: searchText);

      state = state.copyWith.call(
          data: hotPepperList.map((e) {
        return HotPepperListModel.from(e);
      }).toList());
    }
  }
}
