import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF00b4cc);
  Color get grey00 => const Color(0xFFf7f9fa);
  Color get grey01 => const Color(0xFFEBF1F4);
  Color get grey06 => const Color(0xFF7C9094);
  Color get grey08 => const Color(0xFF4A6569);
  Color get greyBlack => const Color(0xFF002429);
  Color get background => Colors.white;
}

extension ColorsAppExcetions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
