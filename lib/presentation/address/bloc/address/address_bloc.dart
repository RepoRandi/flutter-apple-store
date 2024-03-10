import 'package:apple_store/data/datasources/address_remote_datasource.dart';
import 'package:apple_store/data/models/responses/address_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressRemoteDataSource _addressRemoteDataSource;
  AddressBloc(this._addressRemoteDataSource) : super(const _Initial()) {
    on<_GetAddresses>((event, emit) async {
      try {
        emit(const AddressState.loading());
        final response = await _addressRemoteDataSource.getAddresses();

        response.fold(
          (l) => emit(AddressState.error(l)),
          (r) => emit(AddressState.loaded(r.data?.data ?? [])),
        );
      } catch (e) {
        emit(AddressState.error('Error occurred: $e'));
      }
    });
  }
}
