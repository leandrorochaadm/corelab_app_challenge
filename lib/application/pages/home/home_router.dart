import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cubit/cubit.dart';
import 'home_page.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [Provider(create: (context) => HomeCubit()..lastAds())],
        child: const HomePage(),
      );
}
