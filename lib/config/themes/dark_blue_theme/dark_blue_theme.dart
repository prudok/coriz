import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

final darkBlueColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  brightness: Brightness.dark,
);

ThemeData darkBlueTheme() => ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: darkBlueColorScheme,
      splashColor: Colors.transparent,
      appBarTheme: AppBarTheme().copyWith(surfaceTintColor: Colors.transparent),
    );
