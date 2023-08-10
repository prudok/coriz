import 'package:quizzylite/domain/repositories/quiz_repository.dart';
import 'package:quizzylite/domain/usecases/delete_quizzes/delete_quizzes.dart';

class DeleteQuizzesImpl extends DeleteQuizzesUseCase {
  DeleteQuizzesImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute() async => quizRepository.deleteAllQuiz();
}
