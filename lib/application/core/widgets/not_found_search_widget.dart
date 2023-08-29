import 'package:corelab_app_challenge/application/pages/home/cubit/cubit.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/theme_custom.dart';

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
          Image.asset('assets/rafiki.png'),
          const Text('Resultado não encontrado', style: textStyleTitle),
          Text(
            'Não encontramos nenhum resultado parecido com ${state.nameProductSearching ?? ''}.',
            style: textStyleMessageNotResult,
          ),
        ],
      ),
    );
  }
}
