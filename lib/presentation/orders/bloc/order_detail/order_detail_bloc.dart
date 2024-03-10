import 'package:apple_store/data/datasources/order_remote_datasource.dart';
import 'package:apple_store/data/models/responses/order_detail_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_bloc.freezed.dart';
part 'order_detail_event.dart';
part 'order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderDetailBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetOrderDetail>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getOrderById(event.orderId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.order!)),
      );
    });
  }
}
