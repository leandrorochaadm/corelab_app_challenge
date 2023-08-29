import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

class RemoteGetCategory implements GetCategories {
  final CustomDio dio;

  RemoteGetCategory({required this.dio});

  @override
  Future<List<CategoryEntity>> call() async {
    try {
      final result = await dio.get('/categories?key=37ef38c0');

      return result.data
          .map<CategoryModel>((p) => CategoryModel.fromJson(p))
          .toList();
    } on DioException catch (e, s) {
      log("Erro ao buscar categorias", error: e, stackTrace: s);
      throw Exception("Erro ao buscar categorias");
    }
  }
}
