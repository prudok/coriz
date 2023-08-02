import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/core/app_text_styles.dart';
import 'package:quizzylite/core/asset_paths.dart';
import 'package:quizzylite/presentation/module.dart';
import 'package:quizzylite/presentation/widgets/gif_widget.dart';
import 'package:quizzylite/presentation/widgets/quiz_tile.dart';

class LearnedQuizzesList extends ConsumerWidget {
  const LearnedQuizzesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const noQuizTitle = 'No Quizzes Learned';
    final quizListState = ref.watch(quizState);
    final quizList = quizListState.quizList.where((q) => q.isLearned).toList();

    return quizList.isEmpty
        ? const NoDataNotify(
            gifPath: AssetPaths.iKnowAnswerPath,
            title: noQuizTitle,
          )
        : Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: quizList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          'Learned',
                          style: AppTextStyles.titleMedium.copyWith(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                    return quizList[index - 1].isLearned
                        ? QuizTile(quizList[index - 1])
                        : null;
                  },
                ),
              ),
            ],
          );
  }
}
