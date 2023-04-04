import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_colors.dart';
import '../viewmodel/module.dart';
import '../widgets/quizzes_lists/favorited_quizzes_list.dart';
import '../widgets/quizzes_lists/learned_quizzes_list.dart';
import '../widgets/quizzes_lists/new_quizzes_list.dart';
import 'edit_quiz_view.dart';

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
            indicatorColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.primary,
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push(EditQuizView.routeName);
          },
          backgroundColor: AppColors.primary,
          child: const Icon(Icons.add, color: Colors.black),
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
