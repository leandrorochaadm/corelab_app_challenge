import 'package:flutter/material.dart';

import '../pages/home/home.dart';
import '../ui.dart';


class NotFoundSearchWidget extends StatelessWidget {
  final HomeState state;
  const NotFoundSearchWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset('assets/images/rafiki.png'),
          const SizedBox(height: 20),
          Text(
            'Resultado não encontrado',
            style: TextStyles.i.textStyleTitle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Não encontramos nenhum resultado parecido com "${state.nameProductSearching ?? ''}".',
            style: TextStyles.i.textStyleMessageNotResult,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
