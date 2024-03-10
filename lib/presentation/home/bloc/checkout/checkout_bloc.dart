import 'package:apple_store/data/models/responses/product_response_model.dart';
import 'package:apple_store/presentation/home/models/product_quantity_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Loaded([], 0, '', '', 0, '')) {
    on<_AddToCart>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.carts
          .any((element) => element.product.id == event.product.id)) {
        final index = currentState.carts
            .indexWhere((element) => element.product.id == event.product.id);
        final item = currentState.carts[index];
        final newItem = item.copyWith(quantity: item.quantity + 1);
        final newItems =
            currentState.carts.map((e) => e == item ? newItem : e).toList();
        emit(_Loaded(
            newItems,
            currentState.addressId,
            currentState.paymentMethod,
            currentState.shippingService,
            currentState.shippingCost,
            currentState.paymentVaName));
      } else {
        final newItem = ProductQuantity(product: event.product, quantity: 1);
        final newItems = [...currentState.carts, newItem];
        emit(_Loaded(
            newItems,
            currentState.addressId,
            currentState.paymentMethod,
            currentState.shippingService,
            currentState.shippingCost,
            currentState.paymentVaName));
      }
    });

    on<_RemoveToCart>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.carts
          .any((element) => element.product.id == event.product.id)) {
        final index = currentState.carts
            .indexWhere((element) => element.product.id == event.product.id);
        final item = currentState.carts[index];
        if (item.quantity == 1) {
          final newItems = currentState.carts
              .where((element) => element.product.id != event.product.id)
              .toList();
          emit(_Loaded(
              newItems,
              currentState.addressId,
              currentState.paymentMethod,
              currentState.shippingService,
              currentState.shippingCost,
              currentState.paymentVaName));
        } else {
          final newItem = item.copyWith(quantity: item.quantity - 1);
          final newItems =
              currentState.carts.map((e) => e == item ? newItem : e).toList();
          emit(_Loaded(
              newItems,
              currentState.addressId,
              currentState.paymentMethod,
              currentState.shippingService,
              currentState.shippingCost,
              currentState.paymentVaName));
        }
      }
    });

    on<_RemoveCartAtIndex>((event, emit) {
      final currentState = state as _Loaded;
      if (event.index >= 0 && event.index < currentState.carts.length) {
        final List<ProductQuantity> newItems =
            List.from(currentState.carts.cast<ProductQuantity>());
        newItems.removeAt(event.index);
        emit(_Loaded(
            newItems,
            currentState.addressId,
            currentState.paymentMethod,
            currentState.shippingService,
            currentState.shippingCost,
            currentState.paymentVaName));
      }
    });

    on<_AddAddressId>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.carts,
          event.addressId,
          currentState.paymentMethod,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.paymentVaName));
    });

    on<_AddPaymentVaName>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.carts,
          currentState.addressId,
          'bank_transfer',
          currentState.shippingService,
          currentState.shippingCost,
          event.paymentVaName));
    });

    on<_AddShippingService>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.carts,
          currentState.addressId,
          currentState.paymentMethod,
          event.shippingService,
          event.shippingCost,
          currentState.paymentMethod));
    });

    on<_Started>((event, emit) {
      emit(const _Loaded([], 0, '', '', 0, ''));
    });
  }
}
