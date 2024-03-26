// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerListState {
  List<Customer> get customers => throw _privateConstructorUsedError;
  ApiStatus get status => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerListStateCopyWith<CustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListStateCopyWith<$Res> {
  factory $CustomerListStateCopyWith(
          CustomerListState value, $Res Function(CustomerListState) then) =
      _$CustomerListStateCopyWithImpl<$Res, CustomerListState>;
  @useResult
  $Res call({List<Customer> customers, ApiStatus status, bool hasReachedMax});
}

/// @nodoc
class _$CustomerListStateCopyWithImpl<$Res, $Val extends CustomerListState>
    implements $CustomerListStateCopyWith<$Res> {
  _$CustomerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? status = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerListStateImplCopyWith<$Res>
    implements $CustomerListStateCopyWith<$Res> {
  factory _$$CustomerListStateImplCopyWith(_$CustomerListStateImpl value,
          $Res Function(_$CustomerListStateImpl) then) =
      __$$CustomerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Customer> customers, ApiStatus status, bool hasReachedMax});
}

/// @nodoc
class __$$CustomerListStateImplCopyWithImpl<$Res>
    extends _$CustomerListStateCopyWithImpl<$Res, _$CustomerListStateImpl>
    implements _$$CustomerListStateImplCopyWith<$Res> {
  __$$CustomerListStateImplCopyWithImpl(_$CustomerListStateImpl _value,
      $Res Function(_$CustomerListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? status = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$CustomerListStateImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CustomerListStateImpl implements _CustomerListState {
  const _$CustomerListStateImpl(
      {final List<Customer> customers = const [],
      this.status = ApiStatus.initial,
      this.hasReachedMax = false})
      : _customers = customers;

  final List<Customer> _customers;
  @override
  @JsonKey()
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CustomerListState(customers: $customers, status: $status, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_customers), status, hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerListStateImplCopyWith<_$CustomerListStateImpl> get copyWith =>
      __$$CustomerListStateImplCopyWithImpl<_$CustomerListStateImpl>(
          this, _$identity);
}

abstract class _CustomerListState implements CustomerListState {
  const factory _CustomerListState(
      {final List<Customer> customers,
      final ApiStatus status,
      final bool hasReachedMax}) = _$CustomerListStateImpl;

  @override
  List<Customer> get customers;
  @override
  ApiStatus get status;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$CustomerListStateImplCopyWith<_$CustomerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
