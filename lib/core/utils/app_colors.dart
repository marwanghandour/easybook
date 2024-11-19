import 'package:flutter/material.dart';

class AppColors {
  // Light Theme (remains unchanged for reference)
  static const Color primaryLight = Color(0xFFDE7773); // Soft Coral
  static const Color primaryVariantLight = Color(0xFFBF5F4D); // Muted Coral
  static const Color secondaryLight = Color(0xFFB2B7BB); // Soft Grayish Blue
  static const Color secondaryVariantLight = Color(0xFF8C9C9F); // Muted Blue-Gray
  static const Color backgroundLight = Color(0xFFF5F5F5); // Very Light Gray
  static const Color surfaceLight = Color(0xFFFFFFFF); // White
  static const Color errorLight = Color(0xFFB71C1C); // Soft Red
  static const Color onPrimaryLight = Color(0xFFFFFFFF); // White text/icons on primary
  static const Color onSecondaryLight = Color(0xFF000000); // Black text/icons on secondary
  static const Color onBackgroundLight = Color(0xFF212121); // Dark text for light background
  static const Color onSurfaceLight = Color(0xFF212121); // Dark text for surfaces like cards
  static const Color onErrorLight = Color(0xFFFFFFFF); // White text/icons on error messages

  // Redesigned Dark Theme
  static const Color primaryDark = Color(0xFF4A90E2); // Soft Blue for primary elements (modern, cool feel)
  static const Color primaryVariantDark = Color(0xFF357ABD); // Slightly deeper blue for variants
  static const Color secondaryDark = Color(0xFF9E9E9E); // Muted Gray for secondary elements
  static const Color secondaryVariantDark = Color(0xFF788A97); // Subtle Slate Blue for action buttons and highlights
  
  // Background: Deep Charcoal, not fully black, but close enough to give a sleek vibe
  static const Color backgroundDark = Color(0xFF121212); // Deep Charcoal for overall background
  
  // Surface: Slightly lighter dark color to distinguish between background and content
  static const Color surfaceDark = Color(0xFF1C1C1C); // Subtle contrast for surface elements like cards and dialogs
  
  // Error Color: A more muted red for modern error messages that don’t clash
  static const Color errorDark = Color(0xFFE57373); // Light Red for error states
  
  // Text Colors: Off-white to create a softer contrast rather than harsh white
  static const Color onPrimaryDark = Color(0xFFFFFFFF); // White text/icons on primary elements
  static const Color onSecondaryDark = Color(0xFFE0E0E0); // Light Gray for secondary text/icons
  static const Color onBackgroundDark = Color(0xFFE0E0E0); // Light Gray text/icons on dark background
  static const Color onSurfaceDark = Color(0xFFE0E0E0); // Light Gray text/icons on dark surfaces
  
  // Error Message Text: Slightly darker text for error messages
  static const Color onErrorDark = Color(0xFF000000); // Dark text/icons on error surfaces
  
  // Accent Colors for a Modern Sleek Feel
  static const Color silver = Color(0xFFB0BEC5); // Subtle metallic silver for premium feel and highlights
  static const Color darkGray = Color(0xFF444444); // Darker gray for borders or accents
  static const Color accentBlue = Color(0xFF1E88E5); // Bright Blue for accents or highlights, especially for links or buttons
  
  // Optional: Soft highlight for dark mode interaction
  static const Color hoverDark = Color(0xFF333333); // Slightly lighter background on hover for interactivity
}
