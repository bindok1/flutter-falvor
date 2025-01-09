import 'package:base_2/shared/config/theme/app_font.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Define your colors as constants to reuse across the app
  static const Color scaffoldBgColor = Colors.white;
  static const Color foregroundColor = Colors.white;
  static const Color accentColor = Color(0xFFECF1FC);
  static const Color primaryColor = Color(0xFF3D73DD);
  static const Color secondaryColor = Color(0xFFFFB640);
  static const Color starColor = Color(0xffFFB139);
  static const Color darkColor = Color(0xFF2F180A);
  static const Color textColorBlack = Color(0xFF1C1818);
  static const Color textFieldHintColor = Color(0xFF83A4E6);
  static const Color textColorGrey = Color(0xFFB0B1B3);
  static const Color customBlackColor = Color(0xFF421608);
  static const Color iconBlack = Color(0xFF1C1818);

  // Skala teks
  static const double textScaleFactor = 0.8;

  // Define the light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: scaffoldBgColor,
    primaryColor: primaryColor,
    secondaryHeaderColor: secondaryColor,
    cardColor: customBlackColor,

    // Text Theme with scale factor
    textTheme: TextTheme(
      displayLarge: AppFontExtension.plusJakartaSans(
        fontSize: 64.0 * textScaleFactor,
        fontWeight: FontWeight.bold,
        color: textColorBlack,
      ),
      displayMedium: AppFontExtension.plusJakartaSans(
        fontSize: 48.0 * textScaleFactor,
        fontWeight: FontWeight.bold,
        color: textColorBlack,
      ),
      displaySmall: AppFontExtension.plusJakartaSans(
        fontSize: 36.0 * textScaleFactor,
        fontWeight: FontWeight.bold,
        color: textColorBlack,
      ),
      headlineLarge: AppFontExtension.plusJakartaSans(
        fontSize: 32.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
      headlineMedium: AppFontExtension.plusJakartaSans(
        fontSize: 28.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
      headlineSmall: AppFontExtension.plusJakartaSans(
        fontSize: 24.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
      titleLarge: AppFontExtension.plusJakartaSans(
        fontSize: 22.0 * textScaleFactor,
        fontWeight: FontWeight.w500,
        color: textColorBlack,
      ),
      titleMedium: AppFontExtension.plusJakartaSans(
        fontSize: 20.0 * textScaleFactor,
        fontWeight: FontWeight.w500,
        color: textColorBlack,
      ),
      titleSmall: AppFontExtension.plusJakartaSans(
        fontSize: 18.0 * textScaleFactor,
        fontWeight: FontWeight.normal,
        color: textColorBlack,
      ),
      bodyLarge: AppFontExtension.roboto(
        fontSize: 16.0 * textScaleFactor,
        fontWeight: FontWeight.normal,
        color: textColorBlack,
      ),
      bodyMedium: AppFontExtension.roboto(
        fontSize: 14.0 * textScaleFactor,
        fontWeight: FontWeight.normal,
        color: textColorBlack,
      ),
      bodySmall: AppFontExtension.roboto(
        fontSize: 12.0 * textScaleFactor,
        fontWeight: FontWeight.normal,
        color: textColorBlack,
      ),
      labelLarge: AppFontExtension.plusJakartaSans(
        fontSize: 16.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
      labelMedium: AppFontExtension.plusJakartaSans(
        fontSize: 14.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
      labelSmall: AppFontExtension.plusJakartaSans(
        fontSize: 12.0 * textScaleFactor,
        fontWeight: FontWeight.w600,
        color: textColorBlack,
      ),
    ),

    // Color scheme for light theme
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: Colors.white,
      primaryContainer: Colors.orange[200]!,
      onPrimaryContainer: Colors.black,
      secondary: secondaryColor,
      onSecondary: Colors.black,
      secondaryContainer: Colors.orange[100]!,
      onSecondaryContainer: Colors.black,
      tertiary: Colors.purple,
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: textColorBlack,
      surfaceContainerHighest: Colors.grey[200]!,
      onSurfaceVariant: Colors.grey[600]!,
      outline: Colors.grey,
      shadow: Colors.black12,
      inverseSurface: Colors.black,
      onInverseSurface: Colors.white,
      inversePrimary: primaryColor.withOpacity(0.7),
      surfaceTint: primaryColor,
    ),
  );
}
