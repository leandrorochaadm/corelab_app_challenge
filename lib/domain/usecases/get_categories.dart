import '../entities/entities.dart';

abstract class GetCategories {
  Future<List<CategoryEntity>> call();
}
