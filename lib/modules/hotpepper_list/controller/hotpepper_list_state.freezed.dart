// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hotpepper_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HotPepperListStateTearOff {
  const _$HotPepperListStateTearOff();

  _HotPepperListState call({List<HotPepperListModel> data = const []}) {
    return _HotPepperListState(
      data: data,
    );
  }
}

/// @nodoc
const $HotPepperListState = _$HotPepperListStateTearOff();

/// @nodoc
mixin _$HotPepperListState {
  List<HotPepperListModel> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotPepperListStateCopyWith<HotPepperListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotPepperListStateCopyWith<$Res> {
  factory $HotPepperListStateCopyWith(
          HotPepperListState value, $Res Function(HotPepperListState) then) =
      _$HotPepperListStateCopyWithImpl<$Res>;
  $Res call({List<HotPepperListModel> data});
}

/// @nodoc
class _$HotPepperListStateCopyWithImpl<$Res>
    implements $HotPepperListStateCopyWith<$Res> {
  _$HotPepperListStateCopyWithImpl(this._value, this._then);

  final HotPepperListState _value;
  // ignore: unused_field
  final $Res Function(HotPepperListState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HotPepperListModel>,
    ));
  }
}

/// @nodoc
abstract class _$HotPepperListStateCopyWith<$Res>
    implements $HotPepperListStateCopyWith<$Res> {
  factory _$HotPepperListStateCopyWith(
          _HotPepperListState value, $Res Function(_HotPepperListState) then) =
      __$HotPepperListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<HotPepperListModel> data});
}

/// @nodoc
class __$HotPepperListStateCopyWithImpl<$Res>
    extends _$HotPepperListStateCopyWithImpl<$Res>
    implements _$HotPepperListStateCopyWith<$Res> {
  __$HotPepperListStateCopyWithImpl(
      _HotPepperListState _value, $Res Function(_HotPepperListState) _then)
      : super(_value, (v) => _then(v as _HotPepperListState));

  @override
  _HotPepperListState get _value => super._value as _HotPepperListState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_HotPepperListState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HotPepperListModel>,
    ));
  }
}

/// @nodoc

class _$_HotPepperListState implements _HotPepperListState {
  const _$_HotPepperListState({this.data = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<HotPepperListModel> data;

  @override
  String toString() {
    return 'HotPepperListState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HotPepperListState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$HotPepperListStateCopyWith<_HotPepperListState> get copyWith =>
      __$HotPepperListStateCopyWithImpl<_HotPepperListState>(this, _$identity);
}

abstract class _HotPepperListState implements HotPepperListState {
  const factory _HotPepperListState({List<HotPepperListModel> data}) =
      _$_HotPepperListState;

  @override
  List<HotPepperListModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HotPepperListStateCopyWith<_HotPepperListState> get copyWith =>
      throw _privateConstructorUsedError;
}
