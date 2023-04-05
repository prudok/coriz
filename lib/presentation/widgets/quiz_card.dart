import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_colors.dart';

class QuizCard extends ConsumerWidget {
  const QuizCard(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          title,
          softWrap: true,
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
