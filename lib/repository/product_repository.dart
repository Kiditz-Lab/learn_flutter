import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:learn_flutter/model/product.dart';
import 'package:learn_flutter/repository/woo_commerce_client.dart';

class ProductRepository {
  final WooCommerceClient _client;
  ProductRepository(this._client);
  Future<Either<DioException, List<Product>>> fetchProducts() async {
    try {
      final response = await _client.get('/products', queryParameters: {
        'status': 'publish',
        'page': 1,
        'per_page': 100,
      });
      final products =
          List.from(response.data).map((e) => Product.fromJson(e)).toList();
      return right(products);
    } on DioException catch (e) {
      return left(e);
    }
  }

  Future<Either<DioException, Tag>> addTag(TagRequest request) async {
    try {
      final response =
          await _client.post('/products/tags', data: request.toJson());
      return right(Tag.fromJson(response.data));
    } on DioException catch (e) {
      return left(e);
    }
  }
}
