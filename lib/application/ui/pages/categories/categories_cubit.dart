import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain.dart';
import 'categories.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategories getCategories;

  CategoriesCubit({required this.getCategories})
      : super(const CategoriesState.initial());

  Future<void> load() async {
    emit(state.copyWith(status: CategoriesStateStatus.loading));

    List<CategoryEntity> categories = [];
    try {
      categories = await getCategories();
    } catch (_) {
      emit(state.copyWith(status: CategoriesStateStatus.error));
    }

    emit(state.copyWith(
      status: CategoriesStateStatus.loaded,
      categories: categories,
    ));
  }
}
