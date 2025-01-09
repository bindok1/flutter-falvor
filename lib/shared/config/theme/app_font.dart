import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension AppFontExtension on TextStyle {
  static TextStyle plusJakartaSans({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle roboto({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle notoSerif({
    double fontSize = 16,
    required FontWeight fontWeight,
    required Color color,
    double? height,
  }) {
    return GoogleFonts.notoSerif(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height ?? 1.5,
    );

    //formatting
  }

  static TextStyle formattingNotoSerif({
  FontWeight fontWeight = FontWeight.normal,
  required Color color,
  double? height,
}) {
  return GoogleFonts.notoSerif(
    fontWeight: fontWeight,
    color: color,
    height: height ?? 1.5,
  );
}
}
