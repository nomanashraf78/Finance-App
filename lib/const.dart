import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get heading1 {
    return GoogleFonts.montserrat(
      color: const Color(0xFF2743FD),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      height: 1.5, // 36px / 24px
    );
  }
  static TextStyle get heading2 {
    return GoogleFonts.montserrat(
      color:  Colors.white,
      fontSize: 28.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,

    );
  }

  static TextStyle get subheading {
    return GoogleFonts.montserrat(
      color: const Color(0xFF7C2AFF), // Hex color code for #7C2AFF
      fontSize: 18.0, // Font size in logical pixels
      fontStyle: FontStyle.normal, // Font style
      fontWeight: FontWeight.w400, // Font weight
      height: 28.0 / 18.0, // Line height (28px/18px = 1.55556)
    );
  }

  static TextStyle get title {
    return GoogleFonts.montserrat(
      color: Colors.white, // Hex color code for #7C2AFF
      fontSize: 18.0, // Font size in logical pixels
      fontStyle: FontStyle.normal, // Font style
      fontWeight: FontWeight.w400, // Font weight
      height: 28.0 / 18.0, // Line height (28px/18px = 1.55556)
    );
  }

  static TextStyle get title1 {
    return GoogleFonts.montserrat(
      color: Colors.black, // Hex color code for #7C2AFF
      fontSize: 28.0, // Font size in logical pixels
      fontStyle: FontStyle.normal, // Font style
      fontWeight: FontWeight.w700, // Font weight
      height: 28.0 / 18.0, // Line height (28px/18px = 1.55556)
    );
  }

  static TextStyle titleStyle([Color? color]) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle subtitle([Color? color]) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }
  static TextStyle priceStyle([Color? color]) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }



}
