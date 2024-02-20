// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_mode_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeModeState {
  ThemeMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeModeStateCopyWith<ThemeModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModeStateCopyWith<$Res> {
  factory $ThemeModeStateCopyWith(
          ThemeModeState value, $Res Function(ThemeModeState) then) =
      _$ThemeModeStateCopyWithImpl<$Res, ThemeModeState>;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$ThemeModeStateCopyWithImpl<$Res, $Val extends ThemeModeState>
    implements $ThemeModeStateCopyWith<$Res> {
  _$ThemeModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeModeStateImplCopyWith<$Res>
    implements $ThemeModeStateCopyWith<$Res> {
  factory _$$ThemeModeStateImplCopyWith(_$ThemeModeStateImpl value,
          $Res Function(_$ThemeModeStateImpl) then) =
      __$$ThemeModeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$ThemeModeStateImplCopyWithImpl<$Res>
    extends _$ThemeModeStateCopyWithImpl<$Res, _$ThemeModeStateImpl>
    implements _$$ThemeModeStateImplCopyWith<$Res> {
  __$$ThemeModeStateImplCopyWithImpl(
      _$ThemeModeStateImpl _value, $Res Function(_$ThemeModeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$ThemeModeStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeModeStateImpl implements _ThemeModeState {
  const _$ThemeModeStateImpl({this.mode = ThemeMode.dark});

  @override
  @JsonKey()
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeModeState(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModeStateImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModeStateImplCopyWith<_$ThemeModeStateImpl> get copyWith =>
      __$$ThemeModeStateImplCopyWithImpl<_$ThemeModeStateImpl>(
          this, _$identity);
}

abstract class _ThemeModeState implements ThemeModeState {
  const factory _ThemeModeState({final ThemeMode mode}) = _$ThemeModeStateImpl;

  @override
  ThemeMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$ThemeModeStateImplCopyWith<_$ThemeModeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
