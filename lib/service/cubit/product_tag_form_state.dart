part of 'product_tag_form_cubit.dart';

@freezed
class ProductTagFormState with _$ProductTagFormState {
  const factory ProductTagFormState({
    @Default(false) bool isValid,
    @Default(NotEmptyInput.pure()) NotEmptyInput tag,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _ProductTagFormState;
}
