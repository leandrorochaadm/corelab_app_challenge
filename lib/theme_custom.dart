import 'package:flutter/material.dart';

const _primaryColor = Color(0xFF00b4cc);
const grey00 = Color(0xFFf7f9fa);
const grey01 = Color(0xFFEBF1F4);
const grey06 = Color(0xFF7C9094);
const greyBlack = Color(0xFF002429);
const background = Colors.white;

const textStyleTitle = TextStyle(
  fontSize: 20,
  color: greyBlack,
  fontWeight: FontWeight.w500,
);

const textStyleSubTitle = TextStyle(
  color: grey06,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

const textStyleLabelDiscount = TextStyle(
  color: background,
  fontSize: 10,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.5,
);

const textStyleGreyBlack16 = TextStyle(
  fontSize: 16,
  color: greyBlack,
);
const textStyleGreyBlack20 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: greyBlack,
);
const textStylePrimaryColor14 = TextStyle(
  fontSize: 14,
  color: _primaryColor,
);
const textStyleLabelSituation = TextStyle(fontSize: 14, color: grey06);

final themeCustom = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    primary: _primaryColor,
  ),
  unselectedWidgetColor: grey06,
);
