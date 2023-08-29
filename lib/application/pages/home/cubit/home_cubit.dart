import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  void searchProducts({required String nameProduct}) {
    final List products = ["a"];
    List<String> historicOld = state.historySearch;
    List<String> historicNew = [...historicOld, nameProduct];

    if (products.isEmpty) {
      emit(
        state.copyWith(
          status: HomeStateStatus.notFound,
          nameProductSearching: nameProduct,
          historySearch: historicNew,
        ),
      );
    }
    emit(state.copyWith(
      status: HomeStateStatus.loaded,
      title: "${products.length} resultados encontrados",
      nameProductSearching: nameProduct,
      historySearch: historicNew,
    ));
  }

  void searching() {
    emit(state.copyWith(
      status: HomeStateStatus.searching,
      title: 'Pesquisas recentes',
    ));
  }

  void lastAds() {
    emit(state.copyWith(
      title: 'Últimos anúncios',
      status: HomeStateStatus.lastAds,
    ));
  }

  void clearSearch() {
    lastAds();
    emit(state.copyWith(
      nameProductSearching: '',
    ));
  }
}
