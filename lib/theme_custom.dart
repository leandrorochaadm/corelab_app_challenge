import 'package:flutter/material.dart';

const _primaryColor = Color(0xFF00b4cc);
const grey06 = Color(0xFF7C9094);
const greyBlack = Color(0xFF002429);
const background = Colors.white;

final themeCustom = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    primary: _primaryColor,
  ),
  unselectedWidgetColor: grey06,
);
