import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // colors
  static Color darkGreyColor = Colors.black45;
  static Color pinkColor = Color(0xfff896d8);
  static Color whiteColor = Colors.white;
  static Color blueColor = Color(0xFF3407DA);
  static Color purpleColor = Color(0xFFBF63F8);

  // appBar title and colors
  static TextStyle appBarTitle = TextStyle(fontSize: 24, color: whiteColor);

  // big title
  static TextStyle bigTitle = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontSize: 40,
    color: darkGreyColor,
  );

  // medium title
  static TextStyle mediumTitle = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontSize: 24,
    color: darkGreyColor,
    fontWeight: FontWeight.bold,
  );

  // distance
  static TextStyle distanceText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: darkGreyColor,
    fontSize: 24,
  );

  // distance
  static TextStyle percentText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: darkGreyColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // activity type
  static TextStyle activityTypeText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: darkGreyColor,
    fontSize: 18,
  );

  // normal text
  static TextStyle normalText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontSize: 14,
    color: darkGreyColor,
  );

  // date time text
  static TextStyle dateTimeText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontSize: 12,
    fontStyle: FontStyle.italic,
    color: darkGreyColor,
  );

  // link text
  static TextStyle linkText = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontSize: 14,
    color: blueColor,
    decoration: TextDecoration.underline,
    decorationColor: darkGreyColor,
    decorationThickness: 2,
  );
}
