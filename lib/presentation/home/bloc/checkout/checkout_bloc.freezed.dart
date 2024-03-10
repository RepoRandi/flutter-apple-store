// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CheckoutEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CheckoutEvent.addToCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return addToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return addToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CheckoutEvent {
  const factory _AddToCart(final Product product) = _$AddToCartImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveToCartImplCopyWith<$Res> {
  factory _$$RemoveToCartImplCopyWith(
          _$RemoveToCartImpl value, $Res Function(_$RemoveToCartImpl) then) =
      __$$RemoveToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveToCartImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveToCartImpl>
    implements _$$RemoveToCartImplCopyWith<$Res> {
  __$$RemoveToCartImplCopyWithImpl(
      _$RemoveToCartImpl _value, $Res Function(_$RemoveToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveToCartImpl implements _RemoveToCart {
  const _$RemoveToCartImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CheckoutEvent.removeToCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveToCartImplCopyWith<_$RemoveToCartImpl> get copyWith =>
      __$$RemoveToCartImplCopyWithImpl<_$RemoveToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return removeToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return removeToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (removeToCart != null) {
      return removeToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return removeToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return removeToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (removeToCart != null) {
      return removeToCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveToCart implements CheckoutEvent {
  const factory _RemoveToCart(final Product product) = _$RemoveToCartImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveToCartImplCopyWith<_$RemoveToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartAtIndexImplCopyWith<$Res> {
  factory _$$RemoveCartAtIndexImplCopyWith(_$RemoveCartAtIndexImpl value,
          $Res Function(_$RemoveCartAtIndexImpl) then) =
      __$$RemoveCartAtIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveCartAtIndexImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveCartAtIndexImpl>
    implements _$$RemoveCartAtIndexImplCopyWith<$Res> {
  __$$RemoveCartAtIndexImplCopyWithImpl(_$RemoveCartAtIndexImpl _value,
      $Res Function(_$RemoveCartAtIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveCartAtIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveCartAtIndexImpl implements _RemoveCartAtIndex {
  const _$RemoveCartAtIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CheckoutEvent.removeCartAtIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartAtIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartAtIndexImplCopyWith<_$RemoveCartAtIndexImpl> get copyWith =>
      __$$RemoveCartAtIndexImplCopyWithImpl<_$RemoveCartAtIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return removeCartAtIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return removeCartAtIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (removeCartAtIndex != null) {
      return removeCartAtIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return removeCartAtIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return removeCartAtIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (removeCartAtIndex != null) {
      return removeCartAtIndex(this);
    }
    return orElse();
  }
}

abstract class _RemoveCartAtIndex implements CheckoutEvent {
  const factory _RemoveCartAtIndex(final int index) = _$RemoveCartAtIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveCartAtIndexImplCopyWith<_$RemoveCartAtIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressIdImplCopyWith<$Res> {
  factory _$$AddAddressIdImplCopyWith(
          _$AddAddressIdImpl value, $Res Function(_$AddAddressIdImpl) then) =
      __$$AddAddressIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int addressId});
}

/// @nodoc
class __$$AddAddressIdImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddAddressIdImpl>
    implements _$$AddAddressIdImplCopyWith<$Res> {
  __$$AddAddressIdImplCopyWithImpl(
      _$AddAddressIdImpl _value, $Res Function(_$AddAddressIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$AddAddressIdImpl(
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddAddressIdImpl implements _AddAddressId {
  const _$AddAddressIdImpl(this.addressId);

  @override
  final int addressId;

  @override
  String toString() {
    return 'CheckoutEvent.addAddressId(addressId: $addressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressIdImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressIdImplCopyWith<_$AddAddressIdImpl> get copyWith =>
      __$$AddAddressIdImplCopyWithImpl<_$AddAddressIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return addAddressId(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return addAddressId?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (addAddressId != null) {
      return addAddressId(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return addAddressId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return addAddressId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (addAddressId != null) {
      return addAddressId(this);
    }
    return orElse();
  }
}

abstract class _AddAddressId implements CheckoutEvent {
  const factory _AddAddressId(final int addressId) = _$AddAddressIdImpl;

  int get addressId;
  @JsonKey(ignore: true)
  _$$AddAddressIdImplCopyWith<_$AddAddressIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPaymentVaNameImplCopyWith<$Res> {
  factory _$$AddPaymentVaNameImplCopyWith(_$AddPaymentVaNameImpl value,
          $Res Function(_$AddPaymentVaNameImpl) then) =
      __$$AddPaymentVaNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentVaName});
}

/// @nodoc
class __$$AddPaymentVaNameImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddPaymentVaNameImpl>
    implements _$$AddPaymentVaNameImplCopyWith<$Res> {
  __$$AddPaymentVaNameImplCopyWithImpl(_$AddPaymentVaNameImpl _value,
      $Res Function(_$AddPaymentVaNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentVaName = null,
  }) {
    return _then(_$AddPaymentVaNameImpl(
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPaymentVaNameImpl implements _AddPaymentVaName {
  const _$AddPaymentVaNameImpl(this.paymentVaName);

  @override
  final String paymentVaName;

  @override
  String toString() {
    return 'CheckoutEvent.addPaymentVaName(paymentVaName: $paymentVaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaymentVaNameImpl &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentVaName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      __$$AddPaymentVaNameImplCopyWithImpl<_$AddPaymentVaNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return addPaymentVaName(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return addPaymentVaName?.call(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(paymentVaName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return addPaymentVaName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return addPaymentVaName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(this);
    }
    return orElse();
  }
}

abstract class _AddPaymentVaName implements CheckoutEvent {
  const factory _AddPaymentVaName(final String paymentVaName) =
      _$AddPaymentVaNameImpl;

  String get paymentVaName;
  @JsonKey(ignore: true)
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddShippingServiceImplCopyWith<$Res> {
  factory _$$AddShippingServiceImplCopyWith(_$AddShippingServiceImpl value,
          $Res Function(_$AddShippingServiceImpl) then) =
      __$$AddShippingServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shippingService, int shippingCost});
}

/// @nodoc
class __$$AddShippingServiceImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddShippingServiceImpl>
    implements _$$AddShippingServiceImplCopyWith<$Res> {
  __$$AddShippingServiceImplCopyWithImpl(_$AddShippingServiceImpl _value,
      $Res Function(_$AddShippingServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingService = null,
    Object? shippingCost = null,
  }) {
    return _then(_$AddShippingServiceImpl(
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddShippingServiceImpl implements _AddShippingService {
  const _$AddShippingServiceImpl(this.shippingService, this.shippingCost);

  @override
  final String shippingService;
  @override
  final int shippingCost;

  @override
  String toString() {
    return 'CheckoutEvent.addShippingService(shippingService: $shippingService, shippingCost: $shippingCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShippingServiceImpl &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingService, shippingCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      __$$AddShippingServiceImplCopyWithImpl<_$AddShippingServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addToCart,
    required TResult Function(Product product) removeToCart,
    required TResult Function(int index) removeCartAtIndex,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String paymentVaName) addPaymentVaName,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
  }) {
    return addShippingService(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addToCart,
    TResult? Function(Product product)? removeToCart,
    TResult? Function(int index)? removeCartAtIndex,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String paymentVaName)? addPaymentVaName,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
  }) {
    return addShippingService?.call(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addToCart,
    TResult Function(Product product)? removeToCart,
    TResult Function(int index)? removeCartAtIndex,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String paymentVaName)? addPaymentVaName,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(shippingService, shippingCost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeToCart,
    required TResult Function(_RemoveCartAtIndex value) removeCartAtIndex,
    required TResult Function(_AddAddressId value) addAddressId,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
    required TResult Function(_AddShippingService value) addShippingService,
  }) {
    return addShippingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeToCart,
    TResult? Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult? Function(_AddAddressId value)? addAddressId,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult? Function(_AddShippingService value)? addShippingService,
  }) {
    return addShippingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeToCart,
    TResult Function(_RemoveCartAtIndex value)? removeCartAtIndex,
    TResult Function(_AddAddressId value)? addAddressId,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    TResult Function(_AddShippingService value)? addShippingService,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(this);
    }
    return orElse();
  }
}

abstract class _AddShippingService implements CheckoutEvent {
  const factory _AddShippingService(
          final String shippingService, final int shippingCost) =
      _$AddShippingServiceImpl;

  String get shippingService;
  int get shippingCost;
  @JsonKey(ignore: true)
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductQuantity> carts,
      int addressId,
      String paymentMethod,
      String shippingService,
      int shippingCost,
      String paymentVaName});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
    Object? addressId = null,
    Object? paymentMethod = null,
    Object? shippingService = null,
    Object? shippingCost = null,
    Object? paymentVaName = null,
  }) {
    return _then(_$LoadedImpl(
      null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<ProductQuantity>,
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<ProductQuantity> carts,
      this.addressId,
      this.paymentMethod,
      this.shippingService,
      this.shippingCost,
      this.paymentVaName)
      : _carts = carts;

  final List<ProductQuantity> _carts;
  @override
  List<ProductQuantity> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  final int addressId;
  @override
  final String paymentMethod;
  @override
  final String shippingService;
  @override
  final int shippingCost;
  @override
  final String paymentVaName;

  @override
  String toString() {
    return 'CheckoutState.loaded(carts: $carts, addressId: $addressId, paymentMethod: $paymentMethod, shippingService: $shippingService, shippingCost: $shippingCost, paymentVaName: $paymentVaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_carts),
      addressId,
      paymentMethod,
      shippingService,
      shippingCost,
      paymentVaName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(carts, addressId, paymentMethod, shippingService,
        shippingCost, paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(carts, addressId, paymentMethod, shippingService,
        shippingCost, paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(carts, addressId, paymentMethod, shippingService,
          shippingCost, paymentVaName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CheckoutState {
  const factory _Loaded(
      final List<ProductQuantity> carts,
      final int addressId,
      final String paymentMethod,
      final String shippingService,
      final int shippingCost,
      final String paymentVaName) = _$LoadedImpl;

  List<ProductQuantity> get carts;
  int get addressId;
  String get paymentMethod;
  String get shippingService;
  int get shippingCost;
  String get paymentVaName;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProductQuantity> carts,
            int addressId,
            String paymentMethod,
            String shippingService,
            int shippingCost,
            String paymentVaName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
