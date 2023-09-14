import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/data.dart';
import '../../../../domain/domain.dart';
import '../../../core/core.dart';
import 'home.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<GetProducts>(
              create: (context) =>
                  RemoteGetProduct(dio: context.read<CustomDio>())),
          Provider<GetLastAds>(
              create: (context) =>
                  RemoteGetLastAds(dio: context.read<CustomDio>())),
          Provider(
              create: (context) => HomeCubit(
                    getProducts: context.read<GetProducts>(),
                    getLastAds: context.read<GetLastAds>(),
                  )..lastAds()),
        ],
        child: const HomePage(),
      );
}
