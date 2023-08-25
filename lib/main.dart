import 'package:corelab_app_challenge/theme_custom.dart';
import 'package:flutter/material.dart';

import 'application/core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corelab App Challenge',
      debugShowCheckedModeBanner: false,
      theme: themeCustom,
      home: BasePage(),
    );
  }
}
