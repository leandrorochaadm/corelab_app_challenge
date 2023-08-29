import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../domain/entities/entities.dart';
import 'product_widget.dart';

class ProductsWidget extends StatelessWidget {
  final bool isScroll;
  final List<ProductEntity> products;

  const ProductsWidget({
    super.key,
    this.isScroll = false,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: ColorsApp.i.grey01,
        height: 1,
      ),
      itemCount: products.length,
      shrinkWrap: true,
      physics: isScroll
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final product = products[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ProductWidget(product: product),
        );
      },
    );
  }
}
