import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/core/core.dart';
import 'package:quizzylite/generated/l10n.dart';
import 'package:quizzylite/presentation/module.dart';
import 'package:quizzylite/presentation/widgets/widgets.dart';

class NewQuizzesList extends ConsumerWidget {
  const NewQuizzesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noQuizTitle = S.of(context).noNewQuizzes;
    final quizzesListState = ref.watch(quizState);
    final quizzesList = quizzesListState.quizList
        .where((quiz) => quiz.isLearned == false)
        .toList();

    return quizzesList.isEmpty
        ? NoDataNotify(
            gifPath: AssetPaths.sleepingWithPillowPath,
            title: noQuizTitle,
          )
        : Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: quizzesList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          S.of(context).newWord,
                          style: AppTextStyles.titleMedium.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                    return QuizTile(quizzesList[index - 1]);
                  },
                ),
              ),
            ],
          );
  }
}
