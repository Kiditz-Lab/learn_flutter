import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/repository/product_repository.dart';
import 'package:learn_flutter/repository/woo_commerce_client.dart';
import 'package:learn_flutter/service/cubit/product_list_cubit.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductListCubit(ProductRepository(WooCommerceClient())),
      child: BlocBuilder<ProductListCubit, ProductListState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (products) => ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(products[index].name),
              ),
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
