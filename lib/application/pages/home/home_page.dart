import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/theme_custom.dart';
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
            lastAds: () => true,
            error: () => true,
          ),
          builder: (context, state) {
            if (state.status == HomeStateStatus.loading) {
              return _loading();
            }
            if (state.status == HomeStateStatus.notFound) {
              return _notFoundSearch(state: state);
            }
            if (state.status == HomeStateStatus.searching) {
              return _searching(state);
            }
            if (state.status == HomeStateStatus.lastAds) {
              return _lastAds(state);
            }
            if (state.status == HomeStateStatus.loaded) {
              return _productsSearch(state);
            }
            return _error(state: state);
          },
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
    );
  }

  Column _lastAds(HomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBarWidget(state: state),
        TitleWidget(title: state.title ?? ''),
        LastAdsWidget(state: state),
      ],
    );
  }

  Column _productsSearch(HomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBarWidget(state: state),
        TitleWidget(title: state.title ?? ''),
        Expanded(
            child: ProductsWidget(
          isScroll: true,
          products: state.products,
        )),
      ],
    );
  }

  Column _searching(HomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBarWidget(state: state),
        TitleWidget(title: state.title ?? ''),
        Expanded(child: HistorySearchBarWidget(state: state)),
      ],
    );
  }

  Column _notFoundSearch({required HomeState state}) {
    return Column(
      children: [
        SearchBarWidget(state: state),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NotFoundSearchWidget(state: state),
            ],
          ),
        ),
      ],
    );
  }

  Column _error({required HomeState state}) {
    return Column(
      children: [
        SearchBarWidget(state: state),
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ErrorCustomWidget()],
          ),
        ),
      ],
    );
  }

  Expanded _loading() {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
