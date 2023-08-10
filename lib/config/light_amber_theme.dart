import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzylite/core/core.dart';

final lightAmberColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
);

ThemeData lightAmberTheme() => ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: lightAmberColorScheme,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      shadowColor: Colors.transparent,
      textTheme: GoogleFonts.stylishTextTheme().copyWith(
        bodyLarge: GoogleFonts.stylishTextTheme().bodyLarge?.copyWith(
              color: AppColors.blackGrey,
            ),
        bodyMedium: GoogleFonts.stylishTextTheme().bodyMedium?.copyWith(
              color: AppColors.blackGrey,
            ),
        bodySmall: GoogleFonts.stylishTextTheme().bodySmall?.copyWith(
              color: AppColors.blackGrey,
            ),
      ),
      appBarTheme: const AppBarTheme().copyWith(
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
      ),
      cardTheme: const CardTheme().copyWith(
        color: AppColors.easyGrey,
        surfaceTintColor: Colors.transparent,
      ),
      listTileTheme: const ListTileThemeData().copyWith(
        tileColor: AppColors.lightWhite,
      ),
    );
