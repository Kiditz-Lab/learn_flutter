import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_flutter/model/product.dart';
import 'package:learn_flutter/repository/product_repository.dart';

part 'product_list_state.dart';
part 'product_list_cubit.freezed.dart';

class ProductListCubit extends Cubit<ProductListState> {
  final ProductRepository _repository;
  ProductListCubit(this._repository) : super(const ProductListState.initial()) {
    fetch();
  }
  void fetch() async {
    emit(const ProductListState.loading());
    final either = await _repository.fetchProducts();
    either.fold(
      (exception) => emit(ProductListState.error(exception)),
      (products) => emit(ProductListState.loaded(products)),
    );
  }
}
