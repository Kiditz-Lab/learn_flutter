import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromJson(String json) {
    return DateTime.parse('$json.000Z').toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}

const dateTimeConverter = DateTimeConverter();
