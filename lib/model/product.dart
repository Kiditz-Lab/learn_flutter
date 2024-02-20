import 'package:freezed_annotation/freezed_annotation.dart';

import 'image.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @Default('-') String name,
    @Default('') String price,
    @Default([]) List<Image> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
