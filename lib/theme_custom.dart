import 'package:flutter/material.dart';

const _primaryColor = Color(0xFF00b4cc);

final themeCustom = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    primary: _primaryColor,
  ),
);
