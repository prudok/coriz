import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/domain/repositories/quiz_repository.dart';
import 'package:quizzylite/domain/usecases/get_quiz/get_quiz.dart';

class GetQuizImpl extends GetQuizUseCase {
  GetQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<Quiz?> execute(String id) async => quizRepository.getQuizById(id);
}
