import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/presentation/viewmodel/module.dart';

import '../../core/constants/app_text_styles.dart';
import '../../domain/entities/quiz/quiz.dart';
import 'quiz_tile.dart';

class LearnedQuizzesList extends ConsumerWidget {
  const LearnedQuizzesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzesListState = ref.watch(quizListState);
    List<Quiz> quizzesList = quizzesListState.quizList;

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: quizzesList.length,
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
                  child: QuizTile(quizzesList[index]),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
