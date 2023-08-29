import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';
import '../cubit/cubit.dart';
import 'products_widget.dart';

class LastAdsWidget extends StatelessWidget {
  final HomeState state;

  const LastAdsWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text(
                    'Hoje ${index}',
                    style: textStyleSubTitle,
                  ),
                ),
                ProductsWidget(products: state.products),
              ],
            );
          }),
    );
  }
}
