import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyText2: GoogleFonts.raleway(fontWeight: FontWeight.w300, fontSize: 16),
    subtitle1: GoogleFonts.raleway(fontWeight: FontWeight.w300),
    // all category titles
    headline2: GoogleFonts.raleway(
        fontWeight: FontWeight.w300, fontSize: 34, color: Colors.white),
  ),

  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  ),
  // TODO: do the scrollbar theme
//   scrollbarTheme: ScrollbarThemeData()
);
