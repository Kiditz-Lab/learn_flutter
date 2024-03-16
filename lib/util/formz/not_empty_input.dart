import 'package:formz/formz.dart';

enum NotEmptyInputError { empty }

class NotEmptyInput extends FormzInput<String, NotEmptyInputError> {
  const NotEmptyInput.pure() : super.pure('');
  const NotEmptyInput.dirty([String value = '']) : super.dirty(value);

  @override
  NotEmptyInputError? validator(String value) {
    return value.isEmpty ? NotEmptyInputError.empty : null;
  }
}
