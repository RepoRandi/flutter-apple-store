import 'package:apple_store/data/datasources/category_remote_datasource.dart';
import 'package:apple_store/data/models/responses/category_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRemoteDatasource _categoryRemoteDatasource;
  CategoryBloc(this._categoryRemoteDatasource) : super(const _Initial()) {
    on<_GetCategories>((event, emit) async {
      try {
        emit(const CategoryState.loading());
        final response = await _categoryRemoteDatasource.getCategories();

        response.fold(
          (l) => emit(CategoryState.error(l)),
          (r) => emit(CategoryState.loaded(r.data ?? [])),
        );
      } catch (e) {
        emit(CategoryState.error('Error occurred: $e'));
      }
    });
  }
}
