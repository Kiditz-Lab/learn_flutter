part of 'customer_list_cubit.dart';

@freezed
class CustomerListState with _$CustomerListState {
  const factory CustomerListState({
    @Default([]) List<Customer> customers,
    @Default(ApiStatus.initial) ApiStatus status,
    @Default(false) bool hasReachedMax,
  }) = _CustomerListState;
}
