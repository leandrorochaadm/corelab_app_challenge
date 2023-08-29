import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ErrorCustomWidget extends StatelessWidget {
  const ErrorCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.dangerous_outlined,
            size: 96,
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Text('Ops!', style: TextStyles.i.textStyleTitle),
          Text('Aconteceu algo inesperado', style: TextStyles.i.textStyleTitle),
          const SizedBox(height: 10),
          Text(
            'Estamos revolvendo isso agora.',
            style: TextStyles.i.textStyleMessageNotResult,
          ),
          const SizedBox(height: 10),
          Text(
            'Tente novamente mais tarde.',
            style: TextStyles.i.textStyleMessageNotResult,
          ),
        ],
      ),
    );
  }
}
