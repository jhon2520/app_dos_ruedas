import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts{

  static  TextStyle mainTitle = GoogleFonts.poppins(
    color: AppColors.mainColorFontLight,
    fontSize: 30
  );

  static  TextStyle fontH1Light = GoogleFonts.poppins(
    color: AppColors.mainColorFontLight,
    fontSize: 28
  );
  static TextStyle fontH1Dark = GoogleFonts.poppins(
    color: AppColors.mainColorFontDark,
    fontSize: 28
  );
  static TextStyle fontH2Light = GoogleFonts.poppins(
    color: AppColors.mainColorFontLight,
    fontSize: 22

  );
  static TextStyle fontH2Dark = GoogleFonts.poppins(
    color: AppColors.mainColorFontDark,
    fontSize: 22
  );
  static  TextStyle fontH3Light = GoogleFonts.poppins(
    color: AppColors.mainColorFontLight,
    fontSize: 16
  );
  static  TextStyle fontH3Dark = GoogleFonts.poppins(
    color: AppColors.mainColorFontDark,
    fontSize: 16
  );
  static  TextStyle fontH4Light = GoogleFonts.poppins(
    color: AppColors.mainColorFontLight,
    fontSize: 12
  );
  static  TextStyle fontH4Dark = GoogleFonts.poppins(
    color: AppColors.mainColorFontDark,
    fontSize: 12
  );

  static  TextStyle labelFont = GoogleFonts.poppins(
    color:  AppColors.mainLabelColorFont,
    fontSize: 16
  );

}