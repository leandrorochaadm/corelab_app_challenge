import 'package:flutter/material.dart';

const _primaryColor = Color(0xFF00b4cc);
const _grey06 = Color(0xFF7C9094);

final themeCustom = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    primary: _primaryColor,
  ),
  unselectedWidgetColor: _grey06,
);
