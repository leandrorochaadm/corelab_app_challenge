import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String name;
  final double price;
  final String conditions;
  final String status;
  final String discount;
  final String imageUrl;

  const ProductEntity({
    required this.name,
    required this.price,
    required this.conditions,
    required this.status,
    required this.discount,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        price,
        conditions,
        status,
        discount,
        imageUrl,
      ];
}
