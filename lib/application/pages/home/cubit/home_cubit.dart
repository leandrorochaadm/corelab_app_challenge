import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  void searchProducts({required String nameProduct}) {
    final List products = [];

    if (products.isEmpty) {
      List<String> historicOld = state.historySearch;
      List<String> historicNew = [...historicOld, nameProduct];
      emit(
        state.copyWith(
          status: HomeStateStatus.notFound,
          title: "${products.length} resultados encontrados",
          nameProductSearching: nameProduct,
          historySearch: historicNew,
        ),
      );
    }
  }

  void searching() {
    emit(state.copyWith(
      status: HomeStateStatus.searching,
      title: 'Pesquisa recentes',
    ));
  }

  void lastAds() {
    emit(state.copyWith(
      title: 'Últimos anúncios',
      status: HomeStateStatus.lastAds,
    ));
  }
}
