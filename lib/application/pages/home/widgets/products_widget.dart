import 'package:corelab_app_challenge/theme_custom.dart';
import 'package:flutter/material.dart';

import 'product_widget.dart';

class ProductsWidget extends StatelessWidget {
  final bool isScroll;
  const ProductsWidget({
    super.key,
    this.isScroll = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: grey01,
        height: 1,
      ),
      itemCount: 5,
      shrinkWrap: true,
      physics: isScroll
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ProductWidget(),
        );
      },
    );
  }
}
