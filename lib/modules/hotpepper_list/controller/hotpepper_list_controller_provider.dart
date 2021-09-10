import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/core/gateway/provider/hotpepper_repository_provider.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_controller.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_state.dart';

final hotPepperListControllerProvider =
    StateNotifierProvider<HotPepperListController, HotPepperListState>((ref) =>
        HotPepperListController(ref.read(hotPepperRepositoryProvider)));
