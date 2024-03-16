import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_flutter/model/product.dart';
import 'package:learn_flutter/repository/product_repository.dart';
import 'package:learn_flutter/util/formz/not_empty_input.dart';

part 'product_tag_form_state.dart';
part 'product_tag_form_cubit.freezed.dart';

class ProductTagFormCubit extends Cubit<ProductTagFormState> {
  final ProductRepository _repository;
  ProductTagFormCubit(this._repository) : super(const ProductTagFormState());
  void changeTag(String tag) {
    final input = NotEmptyInput.dirty(tag);
    emit(state.copyWith(
      tag: input,
      isValid: Formz.validate([input]),
    ));
  }

  void submit() async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      final result =
          await _repository.addTag(TagRequest(name: state.tag.value));
      result.fold(
        (exception) => emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
          ),
        ),
        (tag) => emit(
          state.copyWith(
            status: FormzSubmissionStatus.success,
          ),
        ),
      );
    }
  }
}
