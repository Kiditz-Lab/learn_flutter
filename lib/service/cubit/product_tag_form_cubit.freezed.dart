// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_tag_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductTagFormState {
  bool get isValid => throw _privateConstructorUsedError;
  NotEmptyInput get tag => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductTagFormStateCopyWith<ProductTagFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTagFormStateCopyWith<$Res> {
  factory $ProductTagFormStateCopyWith(
          ProductTagFormState value, $Res Function(ProductTagFormState) then) =
      _$ProductTagFormStateCopyWithImpl<$Res, ProductTagFormState>;
  @useResult
  $Res call({bool isValid, NotEmptyInput tag, FormzSubmissionStatus status});
}

/// @nodoc
class _$ProductTagFormStateCopyWithImpl<$Res, $Val extends ProductTagFormState>
    implements $ProductTagFormStateCopyWith<$Res> {
  _$ProductTagFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? tag = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as NotEmptyInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTagFormStateImplCopyWith<$Res>
    implements $ProductTagFormStateCopyWith<$Res> {
  factory _$$ProductTagFormStateImplCopyWith(_$ProductTagFormStateImpl value,
          $Res Function(_$ProductTagFormStateImpl) then) =
      __$$ProductTagFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, NotEmptyInput tag, FormzSubmissionStatus status});
}

/// @nodoc
class __$$ProductTagFormStateImplCopyWithImpl<$Res>
    extends _$ProductTagFormStateCopyWithImpl<$Res, _$ProductTagFormStateImpl>
    implements _$$ProductTagFormStateImplCopyWith<$Res> {
  __$$ProductTagFormStateImplCopyWithImpl(_$ProductTagFormStateImpl _value,
      $Res Function(_$ProductTagFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? tag = null,
    Object? status = null,
  }) {
    return _then(_$ProductTagFormStateImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as NotEmptyInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$ProductTagFormStateImpl implements _ProductTagFormState {
  const _$ProductTagFormStateImpl(
      {this.isValid = false,
      this.tag = const NotEmptyInput.pure(),
      this.status = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final NotEmptyInput tag;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'ProductTagFormState(isValid: $isValid, tag: $tag, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTagFormStateImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, tag, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTagFormStateImplCopyWith<_$ProductTagFormStateImpl> get copyWith =>
      __$$ProductTagFormStateImplCopyWithImpl<_$ProductTagFormStateImpl>(
          this, _$identity);
}

abstract class _ProductTagFormState implements ProductTagFormState {
  const factory _ProductTagFormState(
      {final bool isValid,
      final NotEmptyInput tag,
      final FormzSubmissionStatus status}) = _$ProductTagFormStateImpl;

  @override
  bool get isValid;
  @override
  NotEmptyInput get tag;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ProductTagFormStateImplCopyWith<_$ProductTagFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
