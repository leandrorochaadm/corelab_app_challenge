import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../domain/entities/entities.dart';

class ProductWidget extends StatelessWidget {
  final ProductEntity product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: ColorsApp.i.background,
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
                      color: ColorsApp.i.primary,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    product.discount.toUpperCase(),
                    style: TextStyles.i.textStyleLabelDiscount,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 120,
                child: Text(
                  product.name,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: TextStyles.i.textStyleGreyBlack16,
                ),
              ),
              Text(
                product.price.currencyPTBR,
                style: TextStyles.i.textStyleGreyBlack20,
              ),
              Text(
                product.conditions,
                style: TextStyles.i.textStylePrimaryColor14,
              ),
              Text(
                product.status.toUpperCase(),
                style: TextStyles.i.textStyleLabelSituation,
              ),
            ],
          )
        ],
      ),
    );
  }
}
