import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 24, bottom: 10),
      child: Text(
        'Últimos anúncios',
        style: textStyleTitle,
      ),
    );
  }
}
