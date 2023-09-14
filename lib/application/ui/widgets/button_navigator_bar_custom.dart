import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final int index;
  const BottomNavigationBarCustom({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 10),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
      iconSize: 32,
      onTap: (value) {
        if (value == 0) {
          Navigator.pushNamed(context, '/home');
        }
        if (value == 1) {
          Navigator.pushNamed(context, '/categories');
        }
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/categories.png'),
          activeIcon: Image.asset('assets/images/categories_active.png'),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/new.png'),
          activeIcon: Image.asset('assets/images/new.png'),
          label: 'Anunciar',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Conta',
        ),
      ],
    );
  }
}
