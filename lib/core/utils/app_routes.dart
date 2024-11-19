import 'package:easybook/presentation/views/utils/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'navigation_helper.dart';
import '../../presentation/views/errors/error_view.dart';
import '../../presentation/views/main_screen.dart';
import '../../presentation/views/utils/splash_screen.dart';

class AppRoutes {
  static const String main = '/';
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return NavigationHelper.createSlideRoute(const MainScreen());

      case splash:
        return NavigationHelper.createSlideRoute(const Splashscreen());

      case onboarding:
        return NavigationHelper.createSlideRoute(const OnboardingScreen());

     
    
      default:
        return NavigationHelper.createSlideRoute(const ErrorView());
    }
  }
}

