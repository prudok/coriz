import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../domain/entities/quiz/quiz.dart';
import '../viewmodel/module.dart';
import '../views/edit_quiz_view.dart';

class QuizTile extends ConsumerWidget {
  const QuizTile(this.quiz, {super.key});

  final Quiz quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(quizListModel);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: GestureDetector(
        onLongPress: () {
          context.push('${EditQuizView.routeName}${quiz.id}');
        },
        child: ListTile(
          title: Text(
            quiz.word,
            style: AppTextStyles.bodyLarge,
          ),
          subtitle: Text(
            quiz.concept,
            style: AppTextStyles.bodyMedium,
            softWrap: true,
          ),
          trailing: Wrap(
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return DeletingDialog(model: model, quiz: quiz);
                      },
                    );
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                onPressed: () {
                  model.save(quiz.copyWith(isFavorite: !quiz.isFavorite));
                },
                icon: Icon(
                  quiz.isFavorite ? Icons.star : Icons.star_border_outlined,
                  size: 30,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
        ),
      ),
    );
  }
}

class DeletingDialog extends StatelessWidget {
  const DeletingDialog({
    super.key,
    required this.model,
    required this.quiz,
  });

  final QuizzesStateNotifier model;
  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Are you sure?',
        style: TextStyle(color: AppColors.primary),
      ),
      content:
          const Text('Do you want to delete this word?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            model.delete(quiz.id);
          },
          child: const Text('Delete'),
        )
      ],
    );
  }
}
