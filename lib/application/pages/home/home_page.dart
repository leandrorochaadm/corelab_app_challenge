import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme_custom.dart';
import '../../core/widgets/widgets.dart';
import 'cubit/cubit.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final int indexBottomNavigationBar = 0;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey00,
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) => state.status.matchAny(
            any: () {},
          ),
          buildWhen: (previous, current) => current.status.matchAny(
            any: () => false,
            initial: () => true,
            loaded: () => true,
            notFound: () => true,
            searching: () => true,
          ),
          builder: (context, state) {
            if (state.status == HomeStateStatus.notFound) {
              return _notFoundSearch();
            }
            if (state.status == HomeStateStatus.searching) {
              return _searching();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWidget(),
                TitleWidget(),
                // LastAdsWidget(),
                // HistorySearchBarWidget()
              ],
            );
          },
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
    );
  }

  Column _searching() {
    return Column(
      children: [
        SearchBarWidget(),
        Expanded(child: HistorySearchBarWidget()),
      ],
    );
  }

  Column _notFoundSearch() {
    return Column(
      children: [
        SearchBarWidget(),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NotFoundSearchWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
