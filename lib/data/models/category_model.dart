import 'package:corelab_app_challenge/domain/domain.dart';
import 'package:equatable/equatable.dart';

class CategoryModel extends CategoryEntity with EquatableMixin {
  CategoryModel({required super.description});

  factory CategoryModel.fromJson(dynamic json) =>
      CategoryModel(description: json['description']);
}
