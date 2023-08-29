import 'package:flutter/material.dart';

import '../styles/styles.dart';

final themeCustom = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorsApp.i.primary,
    primary: ColorsApp.i.primary,
  ),
  unselectedWidgetColor: ColorsApp.i.grey06,
);
