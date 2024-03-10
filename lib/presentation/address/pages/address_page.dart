import 'package:apple_store/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../../../core/router/app_router.dart';
import '../bloc/address/address_bloc.dart';
import '../widgets/address_tile.dart';
import 'package:badges/badges.dart' as badges;

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  void initState() {
    super.initState();
    context.read<AddressBloc>().add(const AddressEvent.getAddresses());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
        actions: [
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (checkout, _, __, ___, ____, ______) {
                  final totalQuantity = checkout.fold<int>(
                    0,
                    (previousValue, element) =>
                        previousValue + element.quantity,
                  );
                  return totalQuantity > 0
                      ? badges.Badge(
                          badgeContent: Text(
                            totalQuantity.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          child: IconButton(
                            onPressed: () {
                              context.goNamed(
                                RouteConstants.cart,
                                pathParameters: PathParameters().toMap(),
                              );
                            },
                            icon: Assets.icons.cart.svg(height: 24.0),
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            context.goNamed(
                              RouteConstants.cart,
                              pathParameters: PathParameters().toMap(),
                            );
                          },
                          icon: Assets.icons.cart.svg(height: 24.0),
                        );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Text(
            'Pilih atau tambahkan alamat pengiriman',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SpaceHeight(20.0),
          BlocBuilder<AddressBloc, AddressState>(
            builder: (context, state) {
              return state.maybeWhen(orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, loaded: (addresses) {
                return BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    final addressId = state.maybeWhen(
                      orElse: () => 0,
                      loaded: (_, addressId, __, ___, ____, _____) {
                        return addressId;
                      },
                    );

                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: addresses.length,
                      itemBuilder: (context, index) => AddressTile(
                        isSelected: addressId == addresses[index].id,
                        data: addresses[index],
                        onTap: () {
                          context.read<CheckoutBloc>().add(
                                CheckoutEvent.addAddressId(
                                  addresses[index].id!,
                                ),
                              );
                        },
                        onEditTap: () {
                          context.goNamed(
                            RouteConstants.editAddress,
                            pathParameters: PathParameters(
                              rootTab: RootTab.order,
                            ).toMap(),
                            extra: addresses[index],
                          );
                        },
                      ),
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                    );
                  },
                );
              });
            },
          ),
          const SpaceHeight(40.0),
          Button.outlined(
            onPressed: () {
              context.goNamed(
                RouteConstants.addAddress,
                pathParameters: PathParameters(
                  rootTab: RootTab.order,
                ).toMap(),
              );
            },
            label: 'Add address',
          ),
          const SpaceHeight(50.0),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Subtotal (Estimasi)',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    final total = state.maybeWhen(
                      orElse: () => 0,
                      loaded: (checkout, _, __, ___, ____, _____) {
                        return checkout.fold<int>(
                          0,
                          (previousValue, element) =>
                              previousValue +
                              (element.quantity * element.product.price!),
                        );
                      },
                    );
                    return Text(
                      total.currencyFormatRp,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SpaceHeight(12.0),
            Button.filled(
              onPressed: () {
                context.goNamed(
                  RouteConstants.orderDetail,
                  pathParameters: PathParameters(
                    rootTab: RootTab.order,
                  ).toMap(),
                );
              },
              label: 'Lanjutkan',
            ),
          ],
        ),
      ),
    );
  }
}
