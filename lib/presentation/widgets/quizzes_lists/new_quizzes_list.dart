import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_text_styles.dart';
import '../quiz_tile.dart';
import '../../viewmodel/module.dart';

class NewQuizzesList extends ConsumerWidget {
  const NewQuizzesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzesListState = ref.watch(quizListState);
    final quizzesList = quizzesListState.quizList
        .where((quiz) => quiz.isLearned == false)
        .toList();

    return quizzesList.isEmpty
        ? const Center(
            child: Text('No Quiz Found.'),
          )
        : Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: quizzesList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'New',
                          style: AppTextStyles.titleMedium.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ),
                      child: QuizTile(quizzesList[index - 1]),
                    );
                  },
                ),
              ),
            ],
          );
  }
}
