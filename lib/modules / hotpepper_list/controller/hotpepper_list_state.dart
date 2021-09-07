import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_riverpod/modules%20/%20hotpepper_list/model/hotpepper_list_model.dart';

part 'hotpepper_list_stete.freezed.dart';

@freezed
class HotPepperListState with _$HotPepperListState {
  const factory HotPepperListState(
      {@Default([]) List<HotPepperListModel> data}) = _HotPepperListState;
}
