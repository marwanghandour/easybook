import 'package:easybook/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/contants.dart';
import '../../blocs/search/search_bar_cubit.dart';
import 'search_icon_widget.dart';
import 'search_field_widget.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<SearchBarCubit, bool>(
          builder: (context, isActive) {
            if (!isActive) {
              return Column(
                children: [
                  AppConstants.verticalSpacingSmall,
                  Image.asset(AppStrings.appLogo, height: 40),
                ],
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: BlocBuilder<SearchBarCubit, bool>(
              builder: (context, isActive) {
                return AnimatedSize(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  child: isActive
                      ? const SearchFieldWidget()
                      : const SearchIconWidget(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
