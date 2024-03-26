import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_flutter/model/utils/api_status.dart';
import 'package:learn_flutter/repository/customer_repository.dart';

import '../../model/customer.dart';

part 'customer_list_state.dart';
part 'customer_list_cubit.freezed.dart';

class CustomerListCubit extends Cubit<CustomerListState> {
  final CustomerRepository _repository;
  CustomerListCubit(this._repository) : super(const CustomerListState());
  void fetchCustomer({int page = 1, int perPage = 10}) async {
    emit(state.copyWith(status: ApiStatus.loading));
    final result =
        await _repository.fetchCustomer(page: page, perPage: perPage);
    result.fold(
      (_) => emit(state.copyWith(status: ApiStatus.error)),
      (customers) => customers.isEmpty
          ? emit(state.copyWith(hasReachedMax: true, status: ApiStatus.success))
          : emit(
              state.copyWith(
                customers: [...state.customers, ...customers],
                status: ApiStatus.success,
                hasReachedMax: false,
              ),
            ),
    );
  }

  void deleteCustomer(int id) async {
    emit(state.copyWith(status: ApiStatus.loading));
    final result = await _repository.deleteCustomer(id);
    result.fold((_) => emit(state.copyWith(status: ApiStatus.error)), (r) {
      emit(state.copyWith(status: ApiStatus.success, customers: []));
      fetchCustomer();
    });
  }
}
