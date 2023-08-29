import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'categories_page.dart';
import 'cubit/cubit.dart';

class CategoriesRouter {
  CategoriesRouter._();

  static Widget get page => MultiProvider(
        providers: [
          // Provider<GetLastAds>(
          //     create: (context) =>
          //         RemoteGetLastAds(dio: context.read<CustomDio>())),
          Provider(create: (context) => CategoriesCubit()),
        ],
        child: const CategoriesPage(),
      );
}
