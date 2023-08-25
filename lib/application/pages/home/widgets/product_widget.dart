import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Row(
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
                style: TextStyle(
                  color: background,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            Container(
              width: width - 140,
              child: Flexible(
                child: Text(
                  'Dipirona D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D D ',
                  style: TextStyle(
                    fontSize: 16,
                    color: greyBlack,
                  ),
                ),
              ),
            ),
            Text(
              r'R$5000,00',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: greyBlack,
              ),
            ),
            Text(
              r'Em até 12x de R$ 249,00',
              style: TextStyle(
                fontSize: 14,
                color: theme.primaryColor,
              ),
            ),
            Text(
              'Novo'.toUpperCase(),
              style: TextStyle(fontSize: 14, color: grey06),
            ),
          ],
        )
      ],
    );
  }
}
