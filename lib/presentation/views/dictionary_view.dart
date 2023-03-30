import 'package:flutter/material.dart';
import '../widgets/quiz_tile.dart';

class DictionaryView extends StatelessWidget {
  const DictionaryView({Key? key}) : super(key: key);
  static const routeName = '/dictionary';

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
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: const QuizTile(),
        );
      },
    );
  }
}
