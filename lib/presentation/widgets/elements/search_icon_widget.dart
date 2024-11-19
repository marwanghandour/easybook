import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/app_icons.dart';
import '../../blocs/search/search_bar_cubit.dart';

class SearchIconWidget extends StatelessWidget {
  const SearchIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: const ValueKey('search_icon'),
      onPressed: () {
        context.read<SearchBarCubit>().toggleSearch();
      },
      icon: const Icon(AppIcons.search, size: 20),
    );
  }
}
