import 'dart:developer';

import 'package:dio/dio.dart';

import '../../application/application.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';
import '../models/product_model.dart';

class RemoteGetProduct implements GetProducts {
  final CustomDio dio;

  RemoteGetProduct({required this.dio});

  @override
  Future<List<ProductEntity>> call() async {
    try {
      final result = await dio.get('/products?key=37ef38c0');

      return result.data
          .map<ProductModel>((p) => ProductModel.fromJson(p))
          .toList();
    } on DioException catch (e, s) {
      log("Erro ao buscar produtos", error: e, stackTrace: s);
      throw Exception("Erro ao buscar produtos");
    }
  }
}
