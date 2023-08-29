import 'package:flutter/material.dart';

import 'application/aplication.dart';
import 'core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Corelab App Challenge',
        debugShowCheckedModeBanner: false,
        theme: themeCustom,
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeRouter.page,
          '/categories': (context) => CategoriesRouter.page,
        },
      ),
    );
  }
}
