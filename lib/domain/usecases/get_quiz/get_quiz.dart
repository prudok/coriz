import '../../entities/quiz/quiz.dart';

abstract class GetQuizUseCase {
  Future<Quiz?> execute(String id);
}