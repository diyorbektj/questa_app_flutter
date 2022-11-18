part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();

  factory CategoryState({
    required DataStatus status,
    required String message,
    required List<CategoryModel?> categories,
  }) = _CategoryState;

  factory CategoryState.initial() {
    return CategoryState(
        status: DataStatus.initial,
        message: "",
        categories: [],
    );
  }
}
