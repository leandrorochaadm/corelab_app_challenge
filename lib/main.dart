import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application/aplication.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF00b4cc), // navigation bar color
    statusBarColor: Color(0xFF00b4cc), // status bar color
  ));
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
