import 'package:corelab_app_challenge/application/pages/home/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/core.dart';

class HistorySearchBarWidget extends StatelessWidget {
  final HomeState state;
  const HistorySearchBarWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final historics = state.historySearch;
    final cubit = context.read<HomeCubit>();
    return ListView.builder(
      itemCount: historics.length,
      itemBuilder: (context, index) {
        final historic = historics[index];
        return ListTile(
          onTap: () => cubit.searchProducts(nameProduct: historic),
          title: Text(historic, style: TextStyles.i.textStyleLabelItemList),
          leading: Icon(Icons.history, color: ColorsApp.i.grey06),
          dense: true,
        );
      },
    );
  }
}
