import 'package:equatable/equatable.dart';

import '../../domain/entities/entities.dart';

class ProductModel extends ProductEntity with EquatableMixin {
  ProductModel({
    required super.name,
    required super.price,
    required super.conditions,
    required super.status,
    required super.discount,
    required super.imageUrl,
  });

  factory ProductModel.fromJson(dynamic json) => ProductModel(
        name: json['name'],
        price: json['price'],
        conditions: json['conditions'],
        status: json['status'],
        discount: json['discount'],
        imageUrl: json['imageUrl'],
      );
}
