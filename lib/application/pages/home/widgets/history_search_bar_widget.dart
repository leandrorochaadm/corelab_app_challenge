import 'package:flutter/material.dart';

import '../../../../theme_custom.dart';

class HistorySearchBarWidget extends StatelessWidget {
  const HistorySearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 13,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          title: Text('Historico $index', style: textStyleLabelItemList),
          leading: const Icon(Icons.history, color: grey06),
          dense: true,
        ),
      ),
    );
  }
}
