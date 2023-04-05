import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

final darkAmberColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  brightness: Brightness.dark,
);

ThemeData darkAmberTheme() => ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: darkAmberColorScheme,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: const AppBarTheme().copyWith(
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
      ),
      cardTheme: const CardTheme().copyWith(
        color: AppColors.blackGrey,
        surfaceTintColor: Colors.transparent,
      ),
      listTileTheme: const ListTileThemeData().copyWith(
       tileColor: AppColors.lightGrey, 
      ),
    );
