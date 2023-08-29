import 'package:corelab_app_challenge/domain/entities/entities.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/usecases.dart';
import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetProducts getProducts;
  HomeCubit({required this.getProducts}) : super(const HomeState.initial());

  Future<void> searchProducts({required String nameProduct}) async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    List<ProductEntity> products = [];

    try {
      products = await getProducts();
    } catch (_) {
      emit(state.copyWith(
          status: HomeStateStatus.error,
          errorMessage: "Erro ao buscar productos"));
    }

    final List<String> historicOld = state.historySearch;
    final List<String> historicNew = [...historicOld, nameProduct];

    if (products.isEmpty) {
      emit(
        state.copyWith(
          status: HomeStateStatus.notFound,
          nameProductSearching: nameProduct,
          historySearch: historicNew,
        ),
      );
    } else {
      emit(state.copyWith(
        status: HomeStateStatus.loaded,
        title: "${products.length} resultados encontrados",
        nameProductSearching: nameProduct,
        historySearch: historicNew,
        products: products,
      ));
    }
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
