import 'package:corelab_app_challenge/data/usecases/remote_get_products.dart';
import 'package:corelab_app_challenge/domain/usecases/usecases.dart';
import 'package:corelab_app_challenge/infra/rest_client/custom_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
