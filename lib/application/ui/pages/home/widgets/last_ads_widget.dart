import 'package:flutter/material.dart';

import '../../../ui.dart';
import '../home.dart';
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
          itemCount: state.lastAds.length,
          itemBuilder: (context, index) {
            final ads = state.lastAds[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text(
                    ads.day,
                    style: TextStyles.i.textStyleSubTitle,
                  ),
                ),
                ProductsWidget(products: ads.products),
              ],
            );
          }),
    );
  }
}
