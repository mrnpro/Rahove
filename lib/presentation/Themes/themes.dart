import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove/presentation/Themes/constants.dart';

ThemeData lightTheme = ThemeData(
    backgroundColor: const Color(0xFFFFFFFF),
    fontFamily: GoogleFonts.poppins().fontFamily,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Constants.kthridColor(),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    textTheme: textTheme());

TextTheme textTheme() {
  return const TextTheme(
      headline1: TextStyle(
          color: Colors.black38, fontSize: 30, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
}
