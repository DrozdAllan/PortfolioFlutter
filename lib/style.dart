import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyText2: GoogleFonts.raleway(fontWeight: FontWeight.w300),
    subtitle1: GoogleFonts.raleway(fontWeight: FontWeight.w300),
  ),
  // TODO: do the scrollbar theme
//   scrollbarTheme: ScrollbarThemeData()
);
