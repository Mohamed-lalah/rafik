import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

import 'package:flutter/material.dart';

abstract class AppTheme {


  static TextStyle loginInfostyle = GoogleFonts.inter(
  textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
  color:    AppColors.login_Info_Color)
  );

  static TextStyle loginLabelStyle = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 12,
          fontWeight: FontWeight.w500,
          color:    AppColors.login_Label_Color)
  );

  static TextStyle smallDetails = GoogleFonts.inter(
      textStyle: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: AppColors.smallDetail,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color:    AppColors.smallDetail)
  );

  static TextStyle login_Elevated_Button = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color:   AppColors.white)
  );






}