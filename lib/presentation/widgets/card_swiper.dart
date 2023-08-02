import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quizzylite/core/core.dart';
import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/presentation/module.dart';
import 'package:quizzylite/presentation/widgets/widgets.dart';

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
        ref.read(quizState).quizList.where((qz) => qz.isFavorite).length;
  }

  @override
  Widget build(BuildContext context) {
    const noQuizTitle = 'Add At Least One Card';
    final messenger = ScaffoldMessenger.of(context);
    final model = ref.watch(quizModel);
    final quizzesListState = ref.watch(quizState);
    final quizList =
        quizzesListState.quizList.where((quiz) => quiz.isFavorite).toList();
    return Center(
      child: quizList.isEmpty
          ? const NoDataNotify(
              gifPath: AssetPaths.thinkingDogPath,
              title: noQuizTitle,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _FavoriteIndicator(
                  quizzesList: quizList,
                  favoritedListLenght: favoritedListLenght,
                ),
                CardStack(
                  model: model,
                  quizzesList: quizList,
                  messenger: messenger,
                ),
              ],
            ),
    );
  }
}

class _FavoriteIndicator extends StatelessWidget {
  const _FavoriteIndicator({
    required this.quizzesList,
    required this.favoritedListLenght,
  });

  final List<Quiz> quizzesList;
  final int favoritedListLenght;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 10,
      lineHeight: 10.toDouble(),
      percent: 1 - quizzesList.length / favoritedListLenght,
      backgroundColor: AppColors.blackGrey,
      progressColor: AppColors.primary,
      barRadius: const Radius.circular(10),
    );
  }
}

class CardStack extends StatelessWidget {
  const CardStack({
    required this.model,
    required this.quizzesList,
    required this.messenger,
    super.key,
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
