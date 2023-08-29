import 'package:flutter/material.dart';

import '../../../../core/theme/theme_custom.dart';
import '../../../../domain/entities/entities.dart';

class ProductWidget extends StatelessWidget {
  final ProductEntity product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: background,
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            height: 100,
            width: 100,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: product.discount.isNotEmpty,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    product.discount.toUpperCase(),
                    style: textStyleLabelDiscount,
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  product.name,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: textStyleGreyBlack16,
                ),
              ),
              Text(
                product.price.toString(),
                style: textStyleGreyBlack20,
              ),
              Text(
                product.conditions,
                style: textStylePrimaryColor14,
              ),
              Text(
                product.status.toUpperCase(),
                style: textStyleLabelSituation,
              ),
            ],
          )
        ],
      ),
    );
  }
}
