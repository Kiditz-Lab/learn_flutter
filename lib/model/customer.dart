import 'package:freezed_annotation/freezed_annotation.dart';

import 'utils/converter.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    @Default(-1) int id,
    @Default('') @JsonKey(name: 'first_name') String firstName,
    @Default('') @JsonKey(name: 'last_name') String lastName,
    @Default('') String email,
    @dateTimeConverter @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
