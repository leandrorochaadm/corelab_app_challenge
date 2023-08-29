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
        backgroundColor: ColorsApp.i.grey00,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: 'Categorias'),
            Divider(color: ColorsApp.i.grey01),
            BlocConsumer<CategoriesCubit, CategoriesState>(
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
                if (state.status == CategoriesStateStatus.loading) {
                  return _loading();
                }
                if (state.status == CategoriesStateStatus.loaded) {
                  return _categories(state);
                }
                return _error(state: state);
              },
            ),
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBarCustom(index: indexBottomNavigationBar),
      ),
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

  Expanded _categories(CategoriesState state) {
    return Expanded(
      child: ListView.separated(
        itemCount: state.categories.length,
        itemBuilder: (context, index) {
          final category = state.categories[index];
          return InkWell(
            onTap: () {},
            child: Container(
              color: ColorsApp.i.background,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text(
                category.description,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: ColorsApp.i.grey01,
          height: 1,
        ),
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
