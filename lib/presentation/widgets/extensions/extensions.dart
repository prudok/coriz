import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

extension ScaffoldMessengerStateUtils on ScaffoldMessengerState {
  void toast(String message) {
    showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
        backgroundColor: AppColors.secondary,
      ),
    );
  }
}
