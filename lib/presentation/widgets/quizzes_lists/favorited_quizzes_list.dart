import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/asset_paths.dart';
import '../gif_widget.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../quiz_tile.dart';
import '../../viewmodel/module.dart';
import '../../../domain/entities/quiz/quiz.dart';

class FavoritedQuizzesList extends ConsumerWidget {
  const FavoritedQuizzesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String noQuizTitle = 'No Quizzes Added';
    final quizzesListState = ref.watch(quizListState);
    List<Quiz> quizzesList = quizzesListState.quizList
        .where((quiz) => quiz.isFavorite == true)
        .toList();

    return quizzesList.isEmpty
        ? const GifWidget(gifPath: AssetPaths.chillRelaxPath, title: noQuizTitle)
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
                          'Favorites',
                          style: AppTextStyles.titleMedium.copyWith(
                            color: AppColors.secondary,
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
