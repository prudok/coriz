import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/presentation/viewmodel/module.dart';

import '../../domain/entities/quiz/quiz.dart';
import '../views/edit_quiz_view.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class QuizTile extends ConsumerWidget {
  const QuizTile(this.quiz, {super.key});

  final Quiz quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(quizListModel);
    return ListTile(
      title: Text(
        quiz.word,
        style: AppTextStyles.bodyLarge,
      ),
      subtitle: Text(
        quiz.concept,
        style: AppTextStyles.bodyMedium,
        softWrap: true,
      ),
      tileColor: AppColors.lightGrey,
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {
              context.push('${EditQuizView.routeName}${quiz.id}');
            },
            icon: const Icon(
              Icons.edit,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              model.save(quiz.copyWith(isFavorite: !quiz.isFavorite));
            },
            icon: Icon(
              quiz.isFavorite ? Icons.star : Icons.star_border_outlined,
              size: 30,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
    );
  }
}
