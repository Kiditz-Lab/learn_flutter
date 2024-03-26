import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/injector.dart';
import 'package:learn_flutter/model/utils/api_status.dart';
import 'package:learn_flutter/service/cubit/customer_list_cubit.dart';
import 'package:timeago/timeago.dart' as timeago;

class CustomerListView extends StatefulWidget {
  const CustomerListView({super.key});

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}

class _CustomerListViewState extends State<CustomerListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          Injector.resolve<CustomerListCubit>()..fetchCustomer(),
      child: BlocBuilder<CustomerListCubit, CustomerListState>(
        builder: (context, state) {
          print(state);
          final customers = state.customers;
          if (state.status.isLoading()) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status.isSuccess()) {
            if (customers.isEmpty) {
              return const Center(
                child: Text('Belom ada customer'),
              );
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final customer = customers[index];
                  return Dismissible(
                    key: Key(customer.email),
                    onDismissed: (direction) {
                      context
                          .read<CustomerListCubit>()
                          .deleteCustomer(customer.id);
                    },
                    child: Card(
                      child: ListTile(
                        title:
                            Text("${customer.firstName} ${customer.lastName}"),
                        subtitle: Text(customer.email),
                        trailing: Text(
                          timeago.format(customer.dateCreated!),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: customers.length,
              );
            }
          }
          return const SizedBox();
        },
      ),
    );
  }

  void _onScroll() {}
}
