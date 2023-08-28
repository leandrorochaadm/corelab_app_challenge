import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';
import 'products_widget.dart';

class LastAdsWidget extends StatelessWidget {
  const LastAdsWidget({
    super.key,
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
                ProductsWidget(),
              ],
            );
          }),
    );
  }
}
