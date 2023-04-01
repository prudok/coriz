import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/presentation/widgets/quiz_card.dart';

import '../../core/constants/app_colors.dart';
import '../viewmodel/module.dart';
import '../views/edit_quiz_view.dart';

class QuizCardsView extends ConsumerWidget {
  const QuizCardsView({
    Key? key,
  }) : super(key: key);

  static const String widgetName = 'Quiz';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(quizListModel);
    final quizzesList = model.state.quizList;
    final favoritesQuizzesList =
        quizzesList.where((quiz) => quiz.isFavorite == true).toList();

    return ListView(
      padding: const EdgeInsets.all(5.0),
      children: [
        favoritesQuizzesList.isEmpty
            ? const Center(
                child: Text('No Quizzes found.'),
              )
            : Swiper(
                itemWidth: MediaQuery.of(context).size.width,
                itemHeight: MediaQuery.of(context).size.height / 2,
                itemBuilder: (context, index) {
                  //TODO: Refactor this
                  return GestureDetector(
                    onLongPress: () {
                      model.save(favoritesQuizzesList[index].copyWith(
                        isLearned: true,
                        isFavorite: false,
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: AppColors.secondary,
                          content: Text('Word Learned!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: QuizCard(favoritesQuizzesList[index].word),
                  );
                },
                itemCount: favoritesQuizzesList.length,
                layout: SwiperLayout.TINDER,
              ),
        IconButton(
            onPressed: () {
              context.push(EditQuizView.routeName);
            },
            icon: const Icon(
              Icons.add,
              color: AppColors.green,
              size: 40,
            )),
      ],
    );
  }
}
