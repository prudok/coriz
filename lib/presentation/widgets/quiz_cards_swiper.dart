import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../core/constants/asset_paths.dart';
import '../viewmodel/module.dart';
import 'extensions/extensions.dart';
import 'gif_widget.dart';
import 'quiz_card.dart';

class QuizCardsView extends ConsumerWidget {
  const QuizCardsView({
    Key? key,
  }) : super(key: key);

  static const String widgetName = 'Quiz';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String noQuizTitle = 'Add At Least Two Cards';
    final messenger = ScaffoldMessenger.of(context);
    final model = ref.watch(quizListModel);
    //TODO: Do the same thing in other files
    final favoritesQuizzesList =
        model.state.quizList.where((quiz) => quiz.isFavorite).toList();

    return Center(
      child: ListView(
        padding: const EdgeInsets.all(5.0),
        shrinkWrap: true,
        children: [
          favoritesQuizzesList.length < 2
              ? const NoDataNotify(
                  gifPath: AssetPaths.sleepingWithPillowPath,
                  title: noQuizTitle,
                )
              : Swiper(
                  itemWidth: MediaQuery.of(context).size.width,
                  itemHeight: MediaQuery.of(context).size.height / 2,
                  itemBuilder: (context, index) {
                    //TODO: Refactor this
                    return GestureDetector(
                      onLongPress: () {
                        model.save(
                          favoritesQuizzesList[index].copyWith(
                            isLearned: true,
                            isFavorite: false,
                          ),
                        );
                        messenger.toast('Word Learned!');
                      },
                      child: QuizCard(favoritesQuizzesList[index].word),
                    );
                  },
                  itemCount: favoritesQuizzesList.length,
                  layout: SwiperLayout.STACK,
                ),
        ],
      ),
    );
  }
}
