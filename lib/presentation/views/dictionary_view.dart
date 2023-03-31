import 'package:flutter/material.dart';

import '../widgets/learned_quizzes_list.dart';

class DictionaryView extends StatelessWidget {
  const DictionaryView({Key? key}) : super(key: key);
  static const String widgetName = 'Dictionary';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizListView(),
    );
  }
}

class QuizListView extends StatelessWidget {
  const QuizListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const LearnedQuizzesList();
  }
}
