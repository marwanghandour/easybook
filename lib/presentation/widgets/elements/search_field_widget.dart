import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/app_icons.dart';
import '../../blocs/search/search_bar_cubit.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('search_field'),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(AppIcons.search, size: 20),
          suffixIcon: IconButton(
            onPressed: () {
              context.read<SearchBarCubit>().toggleSearch();
            },
            icon: const Icon(AppIcons.xsign),
          ),
        ),
      ),
    );
  }
}
