import 'dart:convert';

import 'package:apple_store/core/constants/variables.dart';
import 'package:apple_store/data/datasources/auth_local_datasource.dart';
import 'package:apple_store/data/models/requests/order_request_model.dart';
import 'package:apple_store/data/models/responses/history_order_response_model.dart';
import 'package:apple_store/data/models/responses/order_detail_response_model.dart';
import 'package:apple_store/data/models/responses/order_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<Either<String, OrderResponseModel>> order(
      OrderRequestModel orderRequestModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/order'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
      body: orderRequestModel.toJson(),
    );

    if (response.statusCode == 200) {
      return right(OrderResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, String>> checkPaymentStatus(int orderId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/order/status/$orderId'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return right(data['status']);
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, HistoryOrderResponseModel>> getOrders() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/orders'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final orderList = HistoryOrderResponseModel.fromJson(response.body);
      return right(orderList);
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, OrderDetailResponseModel>> getOrderById(
      int orderId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/order/$orderId'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final order = OrderDetailResponseModel.fromJson(response.body);
      return right(order);
    } else {
      return left(response.body);
    }
  }
}
