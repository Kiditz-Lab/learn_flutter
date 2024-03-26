import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:learn_flutter/repository/woo_commerce_client.dart';

import '../model/customer.dart';

class CustomerRepository {
  final WooCommerceClient _client;
  CustomerRepository(this._client);
  Future<Either<DioException, List<Customer>>> fetchCustomer({
    int page = 1,
    int perPage = 100,
  }) async {
    try {
      final response = await _client.get('/customers', queryParameters: {
        'page': page,
        'per_page': perPage,
      });
      final results =
          List.from(response.data).map((e) => Customer.fromJson(e)).toList();
      return right(results);
    } on DioException catch (e) {
      return left(e);
    }
  }

  Future<Either<DioException, void>> createCustomer(FormData data) async {
    try {
      await _client.post('/customers', data: data);
      return right(null);
    } on DioException catch (e) {
      return left(e);
    }
  }

  Future<Either<DioException, void>> deleteCustomer(int id) async {
    try {
      await _client.delete('/customers/$id', queryParameters: {'force': true});
      return right(null);
    } on DioException catch (e) {
      return left(e);
    }
  }
}
