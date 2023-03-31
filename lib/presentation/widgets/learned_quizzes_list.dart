import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/presentation/viewmodel/module.dart';

import '../../core/constants/app_text_styles.dart';
import 'quiz_tile.dart';

class LearnedQuizzesList extends ConsumerStatefulWidget {
  const LearnedQuizzesList({Key? key}) : super(key: key);

  @override
  ConsumerState<LearnedQuizzesList> createState() => _LearnedQuizzesListState();
}

class _LearnedQuizzesListState extends ConsumerState<LearnedQuizzesList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Learned',
                    style: AppTextStyles.titleMedium.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              } else {
                return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5.0,
                    ),
                    child: const QuizTile());
              }
            },
          ),
        ),
      ],
    );
  }
}
