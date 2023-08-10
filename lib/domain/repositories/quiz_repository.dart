import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/domain/entities/quiz_list.dart';

abstract class QuizRepository {
  Future<QuizList> loadAllQuizzes();
  Future<Quiz?> getQuizById(String id);
  Future<void> saveQuiz(Quiz quiz);
  Future<void> deleteQuiz(String id);
  Future<void> deleteAllQuiz();
}
