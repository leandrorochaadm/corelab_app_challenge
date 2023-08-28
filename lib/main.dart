import 'package:corelab_app_challenge/application/pages/home/home_router.dart';
import 'package:corelab_app_challenge/theme_custom.dart';
import 'package:flutter/material.dart';

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
      home: HomeRouter.page,
    );
  }
}
