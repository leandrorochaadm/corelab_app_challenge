import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: background,
      child: Row(
        children: [
          Image.network(
            'https://www.farmace.com.br/images/2019/05/18/dip-monoid-500mg,mL.png',
            height: 100,
            width: 100,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  '10% off'.toUpperCase(),
                  style: textStyleLabelDiscount,
                ),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Dipirona D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D ',
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: textStyleGreyBlack16,
                ),
              ),
              Text(
                r'R$5000,00',
                style: textStyleGreyBlack20,
              ),
              Text(
                r'Em até 12x de R$ 249,00',
                style: textStylePrimaryColor14,
              ),
              Text(
                'Novo'.toUpperCase(),
                style: textStyleLabelSituation,
              ),
            ],
          )
        ],
      ),
    );
  }
}
