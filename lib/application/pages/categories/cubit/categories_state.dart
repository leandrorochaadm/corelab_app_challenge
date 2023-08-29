import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import '../../../../domain/domain.dart';

part 'categories_state.g.dart';

@match
enum CategoriesStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class CategoriesState extends Equatable {
  final CategoriesStateStatus status;
  final List<CategoryEntity> categories;

  const CategoriesState({
    required this.status,
    required this.categories,
  });

  const CategoriesState.initial()
      : status = CategoriesStateStatus.initial,
        categories = const [];

  @override
  List<Object?> get props => [categories, status];
}
