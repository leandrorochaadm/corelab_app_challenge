import 'package:flutter/material.dart';

import '../../../theme_custom.dart';

class NotFoundSearchWidget extends StatelessWidget {
  const NotFoundSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/rafiki.png'),
            const Text('Resultado não encontrado', style: textStyleTitle),
            const Text(
              'Não encontramos nenhum resultado parecido com "chinelo".',
              style: textStyleMessageNotResult,
            ),
          ],
        ),
      ),
    );
  }
}
