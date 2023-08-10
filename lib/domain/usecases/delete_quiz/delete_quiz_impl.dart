import 'package:quizzylite/domain/repositories/quiz_repository.dart';
import 'package:quizzylite/domain/usecases/delete_quiz/delete_quiz.dart';

class DeleteQuizImpl extends DeleteQuizUseCase {
  DeleteQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute(String id) async => quizRepository.deleteQuiz(id);
}
