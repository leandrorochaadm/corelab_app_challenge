import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/core.dart';
import '../../../data/data.dart';
import '../../../domain/domain.dart';
import 'cubit/cubit.dart';
import 'home_page.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<GetProducts>(
              create: (context) =>
                  RemoteGetProduct(dio: context.read<CustomDio>())),
          Provider(
              create: (context) =>
                  HomeCubit(getProducts: context.read<GetProducts>())
                    ..lastAds()),
        ],
        child: const HomePage(),
      );
}
