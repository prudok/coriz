import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzylite/core/core.dart';

final darkAmberColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  brightness: Brightness.dark,
);

ThemeData darkAmberTheme = ThemeData.dark(useMaterial3: true).copyWith(
  colorScheme: darkAmberColorScheme,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  shadowColor: Colors.transparent,
  textTheme: GoogleFonts.stylishTextTheme().copyWith(
    bodyLarge: GoogleFonts.stylishTextTheme().bodyLarge?.copyWith(
          color: AppColors.lightWhite,
        ),
    bodyMedium: GoogleFonts.stylishTextTheme().bodyMedium?.copyWith(
          color: AppColors.lightWhite,
        ),
    bodySmall: GoogleFonts.stylishTextTheme().bodySmall?.copyWith(
          color: AppColors.lightWhite,
        ),
  ),
  appBarTheme: const AppBarTheme().copyWith(
    surfaceTintColor: Colors.transparent,
    color: AppColors.blacSurface,
  ),
  cardTheme: const CardTheme().copyWith(
    color: AppColors.blackGrey,
    surfaceTintColor: Colors.transparent,
  ),
  listTileTheme: const ListTileThemeData().copyWith(
    tileColor: AppColors.lightGrey,
  ),
);
