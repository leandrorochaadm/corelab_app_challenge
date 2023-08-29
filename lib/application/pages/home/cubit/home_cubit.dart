import 'package:corelab_app_challenge/domain/entities/entities.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/usecases.dart';
import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetProducts getProducts;
  final GetLastAds getLastAds;

  HomeCubit({
    required this.getLastAds,
    required this.getProducts,
  }) : super(const HomeState.initial());

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

    final productsSearching = products
        .where((product) =>
            product.name.toLowerCase().contains(nameProduct.toLowerCase()))
        .toList();

    final List<String> historicOld = state.historySearch;
    final List<String> historicNew = [...historicOld, nameProduct];

    if (productsSearching.isEmpty) {
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
        title:
            "${productsSearching.length} ${productsSearching.length > 1 ? 'resultados encontrados' : 'resultado encontrado'}",
        nameProductSearching: nameProduct,
        historySearch: historicNew,
        products: productsSearching,
      ));
    }
  }

  void searching() {
    emit(state.copyWith(
      status: HomeStateStatus.searching,
      title: 'Pesquisas recentes',
    ));
  }

  Future<void> lastAds() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    List<LastAdsEntity> lastAds = [];

    try {
      lastAds = await getLastAds();
    } catch (_) {
      emit(state.copyWith(
          status: HomeStateStatus.error,
          errorMessage: "Erro ao buscar productos"));
    }

    emit(state.copyWith(
      title: 'Últimos anúncios',
      status: HomeStateStatus.lastAds,
      lastAds: lastAds,
    ));
  }

  void clearSearch() {
    lastAds();
    emit(state.copyWith(
      nameProductSearching: '',
    ));
  }
}
