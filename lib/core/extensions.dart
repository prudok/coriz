import 'package:flutter/material.dart';
import 'package:quizzylite/core/core.dart';

extension ScaffoldMessengerStateUtils on ScaffoldMessengerState {
  void toast(String message) {
    showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.black),),
        duration: const Duration(seconds: 1),
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
