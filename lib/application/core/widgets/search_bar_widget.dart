import 'package:corelab_app_challenge/application/pages/home/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final HomeState state;
  SearchBarWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = context.read<HomeCubit>();
    _searchController.text = state.nameProductSearching ?? '';
    return Container(
      color: theme.primaryColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onTap: () => cubit.searching(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Color(0xFF94A6A9)),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      // Perform search functionality here
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () =>
                      cubit.searchProducts(nameProduct: _searchController.text),
                  icon: Icon(
                    Icons.search,
                    color: theme.primaryColor,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
