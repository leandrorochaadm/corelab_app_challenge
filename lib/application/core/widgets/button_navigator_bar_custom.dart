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
        // setState(() {
        // widget._index = value.toInt();
        // });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Anunciar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Conta',
        ),
      ],
    );
  }
}
