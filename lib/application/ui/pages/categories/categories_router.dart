import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/data.dart';
import '../../../../domain/domain.dart';
import '../../../core/core.dart';
import 'categories.dart';

class CategoriesRouter {
  CategoriesRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<GetCategories>(
              create: (context) =>
                  RemoteGetCategory(dio: context.read<CustomDio>())),
          Provider(
              create: (context) =>
                  CategoriesCubit(getCategories: context.read<GetCategories>())
                    ..load()),
        ],
        child: const CategoriesPage(),
      );
}
