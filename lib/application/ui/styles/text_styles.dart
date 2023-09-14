import 'package:flutter/material.dart';

import '../ui.dart';


class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'DMSans';

  TextStyle get textStyleTitle => TextStyle(
        fontSize: 20,
        color: ColorsApp.i.greyBlack,
        fontWeight: FontWeight.w500,
        fontFamily: font,
      );

  TextStyle get textStyleMessageNotResult => TextStyle(
        fontSize: 16,
        color: ColorsApp.i.grey08,
        fontWeight: FontWeight.w400,
        fontFamily: font,
      );

  TextStyle get textStyleLabelItemList => TextStyle(
        color: ColorsApp.i.grey06,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: font,
      );

  TextStyle get textStyleSubTitle => TextStyle(
        color: ColorsApp.i.grey06,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: font,
      );

  TextStyle get textStyleLabelDiscount => TextStyle(
        color: ColorsApp.i.background,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        fontFamily: font,
      );

  TextStyle get textStyleGreyBlack16 => TextStyle(
        fontSize: 16,
        color: ColorsApp.i.greyBlack,
        fontFamily: font,
      );

  TextStyle get textStyleGreyBlack20 => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: ColorsApp.i.greyBlack,
        fontFamily: font,
      );

  TextStyle get textStylePrimaryColor14 => TextStyle(
        fontSize: 14,
        color: ColorsApp.i.primary,
        fontFamily: font,
      );

  TextStyle get textStyleLabelSituation =>
      TextStyle(fontSize: 14, color: ColorsApp.i.grey06);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
