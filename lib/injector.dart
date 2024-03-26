import 'package:kiwi/kiwi.dart';
import 'package:learn_flutter/repository/customer_repository.dart';
import 'package:learn_flutter/repository/product_repository.dart';
import 'package:learn_flutter/repository/woo_commerce_client.dart';
import 'package:learn_flutter/service/cubit/customer_list_cubit.dart';
import 'package:learn_flutter/service/cubit/product_list_cubit.dart';
import 'package:learn_flutter/service/cubit/product_tag_form_cubit.dart';
import 'package:learn_flutter/service/cubit/theme_mode_cubit.dart';

part 'injector.g.dart';

abstract class Injector {
  static late KiwiContainer container;

  static final resolve = container.resolve;

  static setup() {
    container = KiwiContainer();
    final injector = _$Injector();
    injector.configure();
  }

  @Register.factory(ThemeModeCubit)
  @Register.factory(ProductTagFormCubit)
  @Register.singleton(ProductListCubit)
  @Register.singleton(ProductRepository)
  @Register.factory(CustomerRepository)
  @Register.factory(CustomerListCubit)
  @Register.singleton(WooCommerceClient)
  void configure();
}
