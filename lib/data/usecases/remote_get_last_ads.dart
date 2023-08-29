import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class RemoteGetLastAds implements GetLastAds {
  final CustomDio dio;

  RemoteGetLastAds({required this.dio});

  @override
  Future<List<LastAdsEntity>> call() async {
    try {
      final result = await dio.get('/last_ads?key=37ef38c0');

      return result.data
          .map<LastAdsModel>((p) => LastAdsModel.fromJson(p))
          .toList();
    } on DioException catch (e, s) {
      log("Erro ao buscar últimos anúncios", error: e, stackTrace: s);
      throw Exception("Erro ao buscar últimos anúncios");
    }
  }
}
