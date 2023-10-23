import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  static ThemeData lightTheme=ThemeData(

appBarTheme: AppBarTheme(
  centerTitle: false,
  backgroundColor: Colors.transparent,
  elevation: 0.0
),

textTheme: TextTheme(

      titleLarge:GoogleFonts.inter(
        fontWeight: FontWeight.w600,

        fontSize:30 ,
        color: Colors.black
      ),
  bodyLarge: GoogleFonts.inter(
    fontSize: 18 ,
    fontWeight: FontWeight.w400,
    color: Colors.black
  )
  ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      selectedIconTheme: IconThemeData(color:Colors.green),
      selectedItemColor: Colors.green ,
      unselectedIconTheme: IconThemeData( color: Colors.grey),
      unselectedItemColor: Colors.grey,
    ),

  );





}