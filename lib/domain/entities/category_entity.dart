import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final String description;

  const CategoryEntity({required this.description});

  @override
  List<Object?> get props => [description];
}
