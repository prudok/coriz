import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/quizList/quiz_list.dart';
import '../../domain/module.dart';
import '../../domain/entities/quiz/quiz.dart';

class QuizzesStateNotifier extends StateNotifier<QuizList> {
  QuizzesStateNotifier(this.ref) : super(const QuizList(quizList: [])) {
    loadQuizzes();
  }

  final Ref ref;
  late final getQuizzes = ref.read(getQuizzesProvider);

  Future<void> loadQuizzes() async {
    state = await getQuizzes.execute();
  }

  Future<void> save(Quiz quiz) async {
    await ref.read(saveQuizProvider).execute(quiz);
    await loadQuizzes();
  }

  Future<Quiz?> get(String id) async {
    return await ref.read(getQuizProvider).execute(id);
  }

  Future<void> delete(String id) async {
    await ref.read(deleteQuizProvider).execute(id);
    await loadQuizzes();
  }
}

final quizListState =
    StateNotifierProvider<QuizzesStateNotifier, QuizList>((ref) {
  return QuizzesStateNotifier(ref);
});

final quizListModel = Provider<QuizzesStateNotifier>((ref) {
  return ref.watch(quizListState.notifier);
});
