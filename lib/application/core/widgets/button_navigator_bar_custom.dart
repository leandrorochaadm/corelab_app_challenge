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
      onTap: (value) {
        print(value);
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
          icon: Image.asset('assets/categories.png'),
          activeIcon: Image.asset('assets/categories_active.png'),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/new.png'),
          activeIcon: Image.asset('assets/new.png'),
          label: 'Anunciar',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Conta',
        ),
      ],
    );
  }
}
