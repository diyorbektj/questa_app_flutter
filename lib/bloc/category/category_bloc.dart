import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/models/category_model.dart';

import '../../enums/data_status.dart';
import '../../repositories/category/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _categoryRepository;
  CategoryBloc({
    required CategoryRepository categoryRepository
}) : _categoryRepository = categoryRepository,
        super(CategoryState.initial()) {
    on<CategoryEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AllCategories>((event, emit) async{
      final result = await _categoryRepository.allCategory();
      if (result.success) {
        emit(state.copyWith(
          categories: result.data ?? [],
          status: DataStatus.initial,
        ));
      }
    });
  }
}
