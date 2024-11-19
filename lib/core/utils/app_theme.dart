import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_strings.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryLight,
    primaryColorLight: AppColors.primaryVariantLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondaryLight,
      surface: AppColors.surfaceLight,
      error: AppColors.errorLight,
      onPrimary: AppColors.onPrimaryLight,
      onSecondary: AppColors.onSecondaryLight,
      onSurface: AppColors.onSurfaceLight,
      onError: AppColors.onErrorLight,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.surfaceLight,
      surfaceTintColor: AppColors.surfaceLight,
      titleTextStyle: TextStyle(
        color: AppColors.onBackgroundLight,
        fontFamily: AppStrings.fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(color: AppColors.onBackgroundLight),
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryLight,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), // Slightly rounded corners for a modern look
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primaryLight),
      ),
      labelStyle: const TextStyle(color: AppColors.onBackgroundLight, fontFamily: AppStrings.fontFamily),
    ),
    iconTheme: const IconThemeData(color: AppColors.primaryLight),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: AppColors.onBackgroundLight, fontFamily: 'Roboto'),
      bodyMedium: TextStyle(color: AppColors.onBackgroundLight.withOpacity(0.7), fontFamily: 'Roboto'),
      titleLarge: const TextStyle(
        color: AppColors.onBackgroundLight,
        fontSize: 22, // Slightly larger title for clarity
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.surfaceLight,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.onSurfaceLight,
      selectedLabelStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600, // Bold for better readability
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        color: AppColors.onSurfaceLight,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryVariantDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.secondaryDark,
      surface: AppColors.surfaceDark,
      error: AppColors.errorDark,
      onPrimary: AppColors.onPrimaryDark,
      onSecondary: AppColors.onSecondaryDark,
      onSurface: AppColors.onSurfaceDark,
      onError: AppColors.onErrorDark,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.surfaceDark,
      surfaceTintColor: AppColors.surfaceDark,
      titleTextStyle: TextStyle(
        color: AppColors.onBackgroundDark,
        fontFamily: AppStrings.fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w600, // Bold for better readability
      ),
      iconTheme: IconThemeData(color: AppColors.onBackgroundDark),
      elevation: 0, // Flat appBar for modern look
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryDark,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primaryDark),
      ),
      labelStyle: const TextStyle(color: AppColors.onBackgroundDark, fontFamily: AppStrings.fontFamily),
    ),
    iconTheme: const IconThemeData(color: AppColors.primaryDark),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: AppColors.onBackgroundDark, fontFamily: 'Roboto'),
      bodyMedium: TextStyle(color: AppColors.onBackgroundDark.withOpacity(0.7), fontFamily: 'Roboto'),
      titleLarge: const TextStyle(
        color: AppColors.onBackgroundDark,
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.surfaceDark,
      selectedItemColor: AppColors.primaryDark,
      unselectedItemColor: AppColors.onSurfaceDark,
      selectedLabelStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        color: AppColors.onSurfaceDark,
      ),
    ),
  );
}
