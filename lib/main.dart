import 'package:apple_store/data/datasources/address_remote_datasource.dart';
import 'package:apple_store/data/datasources/auth_remote_datasource.dart';
import 'package:apple_store/data/datasources/category_remote_datasource.dart';
import 'package:apple_store/data/datasources/firebase_messanging_remote_datasource.dart';
import 'package:apple_store/data/datasources/order_remote_datasource.dart';
import 'package:apple_store/data/datasources/product_remote_datasource.dart';
import 'package:apple_store/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:apple_store/presentation/address/bloc/add_address/add_address_bloc.dart';
import 'package:apple_store/presentation/address/bloc/address/address_bloc.dart';
import 'package:apple_store/presentation/address/bloc/city/city_bloc.dart';
import 'package:apple_store/presentation/address/bloc/province/province_bloc.dart';
import 'package:apple_store/presentation/address/bloc/subdistrict/subdistrict_bloc.dart';
import 'package:apple_store/presentation/auth/bloc/login/login_bloc.dart';
import 'package:apple_store/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:apple_store/presentation/home/bloc/category/category_bloc.dart';
import 'package:apple_store/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:apple_store/presentation/home/bloc/product/product_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/cost/cost_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/history_order/history_order_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/order/order_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/order_detail/order_detail_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/status_order/status_order_bloc.dart';
import 'package:apple_store/presentation/orders/bloc/tracking/tracking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'core/router/app_router.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseMessagingRemoteDatasource().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    final router = appRouter.router;
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider<LogoutBloc>(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(CategoryRemoteDatasource()),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider<CheckoutBloc>(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider<AddressBloc>(
          create: (context) => AddressBloc(AddressRemoteDataSource()),
        ),
        BlocProvider<AddAddressBloc>(
          create: (context) => AddAddressBloc(AddressRemoteDataSource()),
        ),
        BlocProvider<ProvinceBloc>(
          create: (context) => ProvinceBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider<CityBloc>(
          create: (context) => CityBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider<SubdistrictBloc>(
          create: (context) => SubdistrictBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider<CostBloc>(
          create: (context) => CostBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider<OrderBloc>(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider<StatusOrderBloc>(
          create: (context) => StatusOrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => HistoryOrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderDetailBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => TrackingBloc(RajaongkirRemoteDatasource()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Apple Store',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          textTheme: GoogleFonts.dmSansTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            titleTextStyle: GoogleFonts.quicksand(
              color: AppColors.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
            centerTitle: true,
            shape: Border(
              bottom: BorderSide(
                color: AppColors.black.withOpacity(0.05),
              ),
            ),
          ),
        ),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
