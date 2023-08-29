import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ErrorCustomWidget extends StatelessWidget {
  const ErrorCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.dangerous_outlined,
            size: 96,
            color: Colors.red,
          ),
          SizedBox(height: 20),
          Text('Ops!', style: textStyleTitle),
          Text('Aconteceu algo inesperado', style: textStyleTitle),
          SizedBox(height: 10),
          Text(
            'Estamos revolvendo isso agora.',
            style: textStyleMessageNotResult,
          ),
          SizedBox(height: 10),
          Text(
            'Tente novamente mais tarde.',
            style: textStyleMessageNotResult,
          ),
        ],
      ),
    );
  }
}
