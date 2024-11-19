import 'package:easybook/presentation/widgets/main_components/home_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/app_icons.dart';
import '../blocs/theme/theme_bloc.dart';
import '../blocs/theme/theme_event.dart';
import '../widgets/components/custom_search.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
        title: const CustomSearchBar(),
         actions: [
          IconButton(
            icon: const Icon(AppIcons.switchtheme),
          onPressed: () {
            BlocProvider.of<ThemeBloc>(context).add(ToggleThemeEvent());
            
          },
          ),
        ],
      ),
      body: const HomeViewWidgets(),
    );
  }
}
