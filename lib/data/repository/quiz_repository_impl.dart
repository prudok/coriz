import 'dart:convert';
import 'package:collection/collection.dart';

import '../../domain/entities/quiz/quiz.dart';
import '../../domain/entities/quizList/quiz_list.dart';
import '../../domain/repositories/quiz_repository.dart';
import '../datasource/files/files.dart';

class QuizRepositoryImpl extends QuizRepository {
  QuizRepositoryImpl(this.files);

  final Files files;
  final String quizDataPath = 'Quiz.json';

  @override
  Future<void> deleteAllQuiz() async {
    await files.delete(quizDataPath);
  }

  @override
  Future<void> deleteQuiz(String id) async {
    final quizzes = await loadAllQuizzes();
    final newQuizzes = quizzes.quizList.where((quiz) => quiz.id != id).toList();

    await files.write(jsonEncode(QuizList(quizList: newQuizzes).toJson()));
  }

  @override
  Future<Quiz?> getQuizById(String id) async {
    final quizzes = await loadAllQuizzes();
    return quizzes.quizList.firstWhereOrNull((quiz) => quiz.id == id);
  }

  @override
  Future<QuizList> loadAllQuizzes() async {
    final content = await files.read(quizDataPath);
    if (content == null) {
      return const QuizList(quizList: []);
    }
    return QuizList.fromJson(jsonDecode(content));
  }

  @override
  Future<void> saveQuiz(Quiz quiz) async {
    final quizzes = await loadAllQuizzes();
    final existingQuiz =
        quizzes.quizList.firstWhereOrNull((quizItem) => quizItem.id == quiz.id);

    if (existingQuiz == null) {
      quizzes.quizList.add(quiz);
      await files.write(jsonEncode(quizzes.toJson()));
    } else {
      final newQuiz = existingQuiz.copyWith(
        id: quiz.id,
        word: quiz.word,
        concept: quiz.concept,
        isLearned: quiz.isLearned,
        isFavorite: quiz.isFavorite,
      );
      final newQuizzes = quizzes.quizList.map((qz) {
        return qz.id == quiz.id ? newQuiz : qz;
      }).toList();
      await files.write(jsonEncode(QuizList(quizList: newQuizzes).toJson()));
    }
  }
}
