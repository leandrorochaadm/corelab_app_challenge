import 'package:flutter/material.dart';

import '../../core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final int index = 0;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Placeholder(),
      bottomNavigationBar: BottomNavigationBarCustom(index: index),
    );
  }
}
