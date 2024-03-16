import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/injector.dart';
import 'package:learn_flutter/service/cubit/product_list_cubit.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.resolve<ProductListCubit>(),
      child: BlocBuilder<ProductListCubit, ProductListState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (products) => ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: product.images.isNotEmpty
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            product.images.first.src!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : null,
                  title: Text(product.name),
                  subtitle: Text('\$${product.price}'),
                );
              },
            ),
            error: (exception) => Center(
              child: Text(exception.message ?? 'Unknown error message'),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
