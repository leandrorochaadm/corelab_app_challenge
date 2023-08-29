import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  void searchProducts(String nameProduct) {
    final products = [];

    if (products.isEmpty) {
      emit(const HomeState(status: HomeStateStatus.notFound));
    }
  }

  void searching() {
    print('\n\n++++++++++++++++++++++++++');
    emit(const HomeState(
      status: HomeStateStatus.searching,
      title: 'Pesquisa recentes',
    ));
  }
}
