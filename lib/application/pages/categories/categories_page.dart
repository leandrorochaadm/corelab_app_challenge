import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../core/core.dart';
import '../home/widgets/widgets.dart';
import 'cubit/cubit.dart';

class CategoriesPage extends StatelessWidget {
  final int indexBottomNavigationBar = 1;
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey00,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: 'Categorias'),
            const Divider(color: grey01),
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
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      final category = state.categories[index];
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          color: background,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 14),
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
                    separatorBuilder: (context, index) => const Divider(
                      color: grey01,
                      height: 1,
                    ),
                  ),
                );
                // return _error(state: state);
              },
            ),
          ],
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
