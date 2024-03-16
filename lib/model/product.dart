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

@freezed
class TagRequest with _$TagRequest {
  factory TagRequest({
    required String name,
  }) = _TagRequest;

  factory TagRequest.fromJson(Map<String, dynamic> json) =>
      _$TagRequestFromJson(json);
}

@freezed
class Tag with _$Tag {
  factory Tag({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String slug,
    @Default('') String description,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
