import 'package:apple_store/core/components/custom_dropdown.dart';
import 'package:apple_store/core/core.dart';
import 'package:apple_store/presentation/orders/bloc/cost/cost_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/router/app_router.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../widgets/cart_tile.dart';

import 'package:badges/badges.dart' as badges;

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String selectedCourier = 'jne';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Orders'),
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
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loaded: (products, _, __, ___, ____, _____) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) => CartTile(
                      data: products[index],
                      index: index,
                    ),
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(16.0),
                  );
                },
              );
            },
          ),
          const SpaceHeight(36.0),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              final weight = state.maybeWhen(
                orElse: () => 0.0,
                loaded: (checkout, _, __, ___, ____, _____) {
                  return checkout.fold<double>(
                    0.0,
                    (previousValue, element) =>
                        previousValue + double.parse(element.product.weight!),
                  );
                },
              );
              return CustomDropdown<String>(
                value: selectedCourier,
                items: const [
                  'jne',
                  'jnt',
                  'tiki',
                  'pos',
                  'sicepat',
                  'anteraja',
                  'lion',
                  'ninja'
                ],
                label: 'Pilih Kurir',
                onChanged: (value) {
                  setState(() {
                    selectedCourier = value!;
                    context.read<CostBloc>().add(CostEvent.getCost(
                          origin: '5779',
                          destination: '2103',
                          weight: weight.toInt(),
                          courier: selectedCourier,
                        ));
                  });
                },
              );
            },
          ),
          const SpaceHeight(36.0),
          _SelectShipping(
            selectedCourier: selectedCourier,
          ),
          // const _ShippingSelected(),
          const SpaceHeight(36.0),
          const Divider(),
          const SpaceHeight(8.0),
          const Text(
            'Detail Belanja :',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SpaceHeight(12.0),
          Row(
            children: [
              const Text(
                'Total Harga (Produk)',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final total = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (products, _, __, ___, ____, _____) {
                      return products.fold<int>(
                          0,
                          (previousValue, element) =>
                              previousValue +
                              (element.product.price! * element.quantity));
                    },
                  );
                  return Text(
                    total.currencyFormatRp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ],
          ),
          const SpaceHeight(5.0),
          Row(
            children: [
              const Text(
                'Total Ongkos Kirim',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final shippingCost = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (_, __, ___, ____, shippingCost, ______) {
                      return shippingCost;
                    },
                  );
                  return Text(
                    shippingCost.currencyFormatRp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ],
          ),
          const SpaceHeight(8.0),
          const Divider(),
          const SpaceHeight(24.0),
          Row(
            children: [
              const Text(
                'Total Belanja',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final total = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (products, _, __, ___, shippingCost, ______) {
                      return products.fold<int>(
                              0,
                              (previousValue, element) =>
                                  previousValue +
                                  (element.product.price! * element.quantity)) +
                          shippingCost;
                    },
                  );
                  return Text(
                    total.currencyFormatRp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ],
          ),
          const SpaceHeight(20.0),
          Button.filled(
            onPressed: () {
              context.goNamed(
                RouteConstants.paymentDetail,
                pathParameters: PathParameters().toMap(),
              );
            },
            label: 'Pilih Pembayaran',
          ),
        ],
      ),
    );
  }
}

class _SelectShipping extends StatefulWidget {
  //  _SelectShipping();
  final String selectedCourier;

  const _SelectShipping({super.key, required this.selectedCourier});

  @override
  State<_SelectShipping> createState() => _SelectShippingState();
}

class _SelectShippingState extends State<_SelectShipping> {
  @override
  Widget build(BuildContext context) {
    void onSelectShippingTap() {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        builder: (BuildContext context) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    child: ColoredBox(
                      color: AppColors.light,
                      child: SizedBox(height: 8.0, width: 55.0),
                    ),
                  ),
                ),
                const SpaceHeight(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Metode Pengiriman',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.light,
                      child: IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(
                          Icons.close,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(18.0),
                const Divider(color: AppColors.stroke),
                BlocBuilder<CostBloc, CostState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const SizedBox();
                      },
                      loaded: (costResponseModel) {
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final item = costResponseModel
                                .rajaongkir!.results![0].costs![index];
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              onTap: () {
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addShippingService(
                                          widget.selectedCourier,
                                          item.cost![0].value!),
                                    );
                                context.pop();
                              },
                              title: Text(
                                  '${item.service} - ${item.description} (${item.cost![0].value!.currencyFormatRp})'),
                              subtitle:
                                  Text('Estimasi ${item.cost![0].etd} Hari'),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const Divider(color: AppColors.stroke),
                          itemCount: costResponseModel
                              .rajaongkir!.results![0].costs!.length,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return GestureDetector(
      onTap: onSelectShippingTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.stroke),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pilih Pengiriman',
              style: TextStyle(fontSize: 16),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

class _ShippingSelected extends StatelessWidget {
  const _ShippingSelected();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.stroke),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Reguler',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text(
                  'Edit',
                  style: TextStyle(fontSize: 16),
                ),
                SpaceWidth(4.0),
                Icon(Icons.chevron_right),
              ],
            ),
            SpaceHeight(12.0),
            Text(
              'JNE (Rp. 25.000)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text('Estimasi tiba 2 Januari 2024'),
          ],
        ),
      ),
    );
  }
}
