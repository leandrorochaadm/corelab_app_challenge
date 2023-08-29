import 'package:flutter/material.dart';

import '../../../core/theme/theme_custom.dart';
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
          Image.asset('assets/rafiki.png'),
          const SizedBox(height: 20),
          const Text('Resultado não encontrado', style: textStyleTitle),
          const SizedBox(height: 10),
          Text(
            'Não encontramos nenhum resultado parecido com ${state.nameProductSearching ?? ''}.',
            style: textStyleMessageNotResult,
          ),
        ],
      ),
    );
  }
}
