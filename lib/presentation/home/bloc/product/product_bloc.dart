import 'package:apple_store/data/datasources/product_remote_datasource.dart';
import 'package:apple_store/data/models/responses/product_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource _productRemoteDatasource;
  ProductBloc(this._productRemoteDatasource) : super(const _Initial()) {
    on<_GetProducts>((event, emit) async {
      try {
        emit(const ProductState.loading());
        final response = await _productRemoteDatasource.getProducts(
          search: event.search,
          categoryId: event.categoryId,
        );

        response.fold(
          (l) => emit(ProductState.error(l)),
          (r) => emit(ProductState.loaded(r.data!.data!)),
        );
      } catch (e) {
        emit(ProductState.error('Error occurred: $e'));
      }
    });
  }
}
