import 'package:corelab_app_challenge/theme_custom.dart';
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
        backgroundColor: grey00,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 24, bottom: 10),
              child: Text(
                'Últimos anúncios',
                style: textStyleTitle,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10),
                          child: Text(
                            'Hoje ${index}',
                            style: textStyleSubTitle,
                          ),
                        ),
                        ProductsWidget(),
                      ],
                    );
                  }),
            ),
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
    );
  }
}
