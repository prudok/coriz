import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/core/error_handler.dart';
import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/domain/entities/quiz_list.dart';
import 'package:quizzylite/domain/module.dart';

class QuizzesStateNotifier extends StateNotifier<QuizList> {
  QuizzesStateNotifier(this.ref) : super(QuizList(quizList: [])) {
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
    return ref.read(getQuizProvider).execute(id);
  }

  Future<void> delete(String id) async {
    await ref.read(deleteQuizProvider).execute(id);
    await loadQuizzes();
  }
}

final quizState = StateNotifierProvider<QuizzesStateNotifier, QuizList>((ref) {
  return QuizzesStateNotifier(ref);
});

final quizModel = Provider<QuizzesStateNotifier>((ref) {
  return ref.watch(quizState.notifier);
});

final errorHandler = ErrorHandler();
