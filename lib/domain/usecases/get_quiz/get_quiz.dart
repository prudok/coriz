import 'package:quizzylite/domain/entities/quiz.dart';

abstract class GetQuizUseCase {
  Future<Quiz?> execute(String id);
}
