part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.addToCart(Product product) = _AddToCart;
  const factory CheckoutEvent.removeToCart(Product product) = _RemoveToCart;
  const factory CheckoutEvent.removeCartAtIndex(int index) = _RemoveCartAtIndex;
  const factory CheckoutEvent.addAddressId(int addressId) = _AddAddressId;
  const factory CheckoutEvent.addPaymentVaName(String paymentVaName) =
      _AddPaymentVaName;
  const factory CheckoutEvent.addShippingService(
      String shippingService, int shippingCost) = _AddShippingService;
}
