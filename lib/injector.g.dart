// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => ThemeModeCubit())
      ..registerFactory((c) => ProductTagFormCubit(c<ProductRepository>()))
      ..registerSingleton((c) => ProductListCubit(c<ProductRepository>()))
      ..registerSingleton((c) => ProductRepository(c<WooCommerceClient>()))
      ..registerFactory((c) => CustomerRepository(c<WooCommerceClient>()))
      ..registerFactory((c) => CustomerListCubit(c<CustomerRepository>()))
      ..registerSingleton((c) => WooCommerceClient());
  }
}
