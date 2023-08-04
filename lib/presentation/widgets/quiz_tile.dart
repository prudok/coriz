import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/core/app_colors.dart';
import 'package:quizzylite/core/app_text_styles.dart';
import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/generated/l10n.dart';
import 'package:quizzylite/presentation/module.dart';
import 'package:quizzylite/presentation/views/edit_quiz_view.dart';

class QuizTile extends ConsumerWidget {
  const QuizTile(this.quiz, {super.key});

  final Quiz quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(quizModel);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
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
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return _DeletingDialog(model: model, quiz: quiz);
                    },
                  );
                },
                icon: const Icon(Icons.remove),
              ),
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
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}

class _DeletingDialog extends StatelessWidget {
  const _DeletingDialog({
    required this.model,
    required this.quiz,
  });

  final QuizzesStateNotifier model;
  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        S.of(context).areYouSure,
        style: const TextStyle(color: AppColors.primary),
      ),
      content: Text(S.of(context).doUWantDeleteWord),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(S.of(context).cancel),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            model.delete(quiz.id);
          },
          child: Text(S.of(context).delete),
        )
      ],
    );
  }
}
