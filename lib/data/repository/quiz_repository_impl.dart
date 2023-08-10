import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:quizzylite/data/datasource/files/files.dart';
import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/domain/entities/quiz_list.dart';
import 'package:quizzylite/domain/repositories/quiz_repository.dart';

class QuizRepositoryImpl extends QuizRepository {
  QuizRepositoryImpl(this.files);

  final Files files;
  final String quizDataPath = 'quizzes.json';

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
      return QuizList(quizList: []);
    }
    return QuizList.fromJson(jsonDecode(content) as Map<String, Object?>);
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
