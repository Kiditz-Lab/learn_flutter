import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:learn_flutter/injector.dart';
import 'package:learn_flutter/service/cubit/product_tag_form_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.resolve<ProductTagFormCubit>(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocListener<ProductTagFormCubit, ProductTagFormState>(
          listener: (context, state) {
            if (state.status.isSuccess) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Sukses cuk!!')));
            }
          },
          child: const Column(
            children: [
              _TagInput(),
              SizedBox(height: 20),
              _SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TagInput extends StatelessWidget {
  const _TagInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductTagFormCubit, ProductTagFormState>(
      buildWhen: (previous, current) => previous.tag != current.tag,
      builder: (context, state) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'Tag Name',
            errorText: state.tag.isNotValid ? 'Tag name is required' : null,
          ),
          onChanged: (value) =>
              context.read<ProductTagFormCubit>().changeTag(value),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductTagFormCubit, ProductTagFormState>(
      builder: (context, state) {
        return ElevatedButton.icon(
          style:
              ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40)),
          onPressed: state.isValid
              ? () {
                  context.read<ProductTagFormCubit>().submit();
                }
              : null,
          icon: state.status.isInProgress
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(),
                )
              : const Icon(Icons.add_outlined),
          label: const Text('Submit'),
        );
      },
    );
  }
}
