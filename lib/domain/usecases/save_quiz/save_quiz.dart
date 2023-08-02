import 'package:quizzylite/domain/entities/quiz.dart';

abstract class SaveQuizUseCase {
  Future<void> execute(Quiz quiz);
}
