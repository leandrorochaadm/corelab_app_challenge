import 'package:flutter/material.dart';

import '../ui.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 24, bottom: 10),
      child: Text(
        title,
        style: TextStyles.i.textStyleTitle,
      ),
    );
  }
}
