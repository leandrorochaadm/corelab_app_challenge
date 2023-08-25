import 'package:flutter/material.dart';

import '../../core/widgets/widgets.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final int indexBottomNavigationBar = 0;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blue,
        body: Column(
          children: [
            SearchBarWidget(),
            ProductsWidget(),
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
    );
  }
}
