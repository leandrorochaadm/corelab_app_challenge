import 'package:corelab_app_challenge/data/usecases/remote_get_categories.dart';
import 'package:corelab_app_challenge/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/core.dart';
import 'categories_page.dart';
import 'cubit/cubit.dart';

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
