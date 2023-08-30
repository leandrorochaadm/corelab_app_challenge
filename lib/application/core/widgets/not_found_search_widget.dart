import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../pages/home/cubit/cubit.dart';

class NotFoundSearchWidget extends StatelessWidget {
  final HomeState state;
  const NotFoundSearchWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/rafiki.png'),
          const SizedBox(height: 20),
          Text('Resultado não encontrado', style: TextStyles.i.textStyleTitle),
          const SizedBox(height: 10),
          Text(
            'Não encontramos nenhum resultado parecido com "${state.nameProductSearching ?? ''}".',
            style: TextStyles.i.textStyleMessageNotResult,
          ),
        ],
      ),
    );
  }
}
