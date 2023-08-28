import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  // HomeCubit() : super(const HomeState.initial());
  HomeCubit() : super(HomeState(status: HomeStateStatus.notFound, title: ''));
}
