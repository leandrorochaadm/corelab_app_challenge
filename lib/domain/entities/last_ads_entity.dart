import 'package:equatable/equatable.dart';

import 'entities.dart';

class LastAdsEntity extends Equatable {
  final String day;
  final List<ProductEntity> products;

  const LastAdsEntity({required this.day, required this.products});

  @override
  List<Object?> get props => [day, products];
}
