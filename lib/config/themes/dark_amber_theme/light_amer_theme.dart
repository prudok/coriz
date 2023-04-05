import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

final lightAmberColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  brightness: Brightness.light,
);

ThemeData lightAmberTheme() => ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: lightAmberColorScheme,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: const AppBarTheme().copyWith(
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
      ),
      cardTheme: const CardTheme().copyWith(
        color: AppColors.easyGrey,
        surfaceTintColor: Colors.transparent,
      ),
      listTileTheme: const ListTileThemeData().copyWith(
        tileColor: AppColors.lightWhite,
      ),
    );
