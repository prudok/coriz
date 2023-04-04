import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

final darkAmberColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  brightness: Brightness.dark,
);

ThemeData darkBlueTheme() => ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: darkAmberColorScheme,
      splashColor: Colors.transparent,
      appBarTheme: const AppBarTheme().copyWith(
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
      ),
    );
