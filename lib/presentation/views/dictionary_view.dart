import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_colors.dart';
import '../widgets/quizzes_lists/favorited_quizzes_list.dart';
import '../widgets/quizzes_lists/learned_quizzes_list.dart';

import '../viewmodel/module.dart';
import '../widgets/quizzes_lists/new_quizzes_list.dart';

class DictionaryView extends ConsumerWidget {
  const DictionaryView({
    Key? key,
  }) : super(key: key);
  static const String widgetName = 'Dictionary';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dictionary'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: AppColors.secondary,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.secondary,
            tabs: [
              Text('Favorites'),
              Text('New'),
              Text('Learned'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FavoritedQuizzesList(),
            NewQuizzesList(),
            LearnedQuizzesList(),
          ],
        ),
      ),
    );
  }
}

class QuizListView extends ConsumerWidget {
  const QuizListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO: check this error
    bool isThereQuizzes = ref.watch(quizListModel).state.quizList.isEmpty;
    return !isThereQuizzes
        ? const Center(
            child: Text('No Quizzes.'),
          )
        : Container();
  }
}
