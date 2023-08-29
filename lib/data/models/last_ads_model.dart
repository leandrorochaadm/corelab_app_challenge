import 'package:equatable/equatable.dart';

import '../../domain/domain.dart';
import 'models.dart';

class LastAdsModel extends LastAdsEntity with EquatableMixin {
  LastAdsModel({required super.day, required super.products});

  factory LastAdsModel.fromJson(dynamic json) {
    List<ProductEntity> products = [];
    final List<dynamic> list = json['products'];
    for (var product in list) {
      final productModel = ProductModel.fromJson(product);
      products.add(productModel);
    }
    return LastAdsModel(day: json['day'], products: products);
  }
}
