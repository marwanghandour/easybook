import 'package:flutter/material.dart';

class AppStyles {
  // Base Text Style with Default Font and Color
  static const TextStyle baseTextStyle = TextStyle(
    fontFamily: 'HankenGrotesk', // Ensure your font family is defined in pubspec.yaml
    height: 1.5, // Standard line height for readability
  );

  // Title Text Styles
  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5, // Slight spacing for large titles
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600, // Medium weight for secondary titles
    letterSpacing: 0.5,
  );

  // Body Text Styles
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.3, // Slightly more spaced out for body text
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.2,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.2,
  );

  static const TextStyle microText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600, // Bold but not too heavy
    letterSpacing: 1.2, // For a more prominent appearance on buttons
  );

  static const TextStyle smallHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  );

  static TextStyle customTextStyle({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.2,
    double height = 1.5,
    TextBaseline? textBaseline,
  }) {
    return baseTextStyle.copyWith(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      textBaseline: textBaseline,
    );
  }
}
