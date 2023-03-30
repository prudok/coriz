import '../../entities/quiz/quiz.dart';

abstract class SaveQuizUseCase {
  Future<void> execute(Quiz quiz);
}