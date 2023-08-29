import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../core/core.dart';
import 'cubit/cubit.dart';

class CategoriesPage extends StatelessWidget {
  final int indexBottomNavigationBar = 1;
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey00,
        body: BlocConsumer<CategoriesCubit, CategoriesState>(
          listener: (context, state) => state.status.matchAny(
            any: () {},
          ),
          buildWhen: (previous, current) => current.status.matchAny(
            any: () => false,
            initial: () => true,
            loaded: () => true,
            error: () => true,
          ),
          builder: (context, state) {
            return _error(state: state);
          },
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
    );
  }

  Widget _error({required CategoriesState state}) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: ErrorCustomWidget()),
      ],
    );
  }
}
