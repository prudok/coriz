import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../core/constants/asset_paths.dart';
import '../../core/constants/app_colors.dart';
import '../../domain/entities/quiz/quiz.dart';
import '../viewmodel/module.dart';
import 'extensions/extensions.dart';
import 'gif_widget.dart';
import 'quiz_card.dart';

class QuizCardsView extends ConsumerStatefulWidget {
  const QuizCardsView({super.key});

  static const String widgetName = 'Quiz';

  @override
  ConsumerState<QuizCardsView> createState() => _QuizCardsViewState();
}

class _QuizCardsViewState extends ConsumerState<QuizCardsView> {
  late final int favoritedListLenght;
  @override
  void initState() {
    super.initState();
    favoritedListLenght =
        ref.read(quizListState).quizList.where((qz) => qz.isFavorite).length;
  }

  @override
  Widget build(BuildContext context) {
    const String noQuizTitle = 'Add At Least One Card';
    final messenger = ScaffoldMessenger.of(context);
    final model = ref.watch(quizListModel);
    final quizzesListState = ref.watch(quizListState);
    List<Quiz> quizzesList =
        quizzesListState.quizList.where((quiz) => quiz.isFavorite).toList();
    return Center(
      child: quizzesList.isEmpty
          ? const NoDataNotify(
              gifPath: AssetPaths.thinkingDogPath, title: noQuizTitle)
          : Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FavoriteIndicator(
                  quizzesList: quizzesList,
                  favoritedListLenght: favoritedListLenght,
                ),
                CardStack(
                  model: model,
                  quizzesList: quizzesList,
                  messenger: messenger,
                ),
              ],
            ),
    );
  }
}

class FavoriteIndicator extends StatelessWidget {
  const FavoriteIndicator({
    super.key,
    required this.quizzesList,
    required this.favoritedListLenght,
  });

  final List<Quiz> quizzesList;
  final int favoritedListLenght;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 10,
      lineHeight: 10.0,
      percent: 1 - quizzesList.length / favoritedListLenght,
      backgroundColor: AppColors.blackGrey,
      progressColor: AppColors.primary,
      barRadius: const Radius.circular(10.0),
    );
  }
}

class CardStack extends StatelessWidget {
  const CardStack({
    super.key,
    required this.model,
    required this.quizzesList,
    required this.messenger,
  });

  final QuizzesStateNotifier model;
  final List<Quiz> quizzesList;
  final ScaffoldMessengerState messenger;

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemWidth: MediaQuery.of(context).size.width,
      itemHeight: MediaQuery.of(context).size.height / 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPress: () {
            model.save(
              quizzesList[index].copyWith(
                isLearned: true,
                isFavorite: false,
              ),
            );
            messenger.toast('Word Learned!');
          },
          child: QuizCard(quiz: quizzesList[index]),
        );
      },
      itemCount: quizzesList.length,
      layout: SwiperLayout.STACK,
    );
  }
}
