import '../../repositories/quiz_repository.dart';
import 'delete_quizzes.dart';

class DeleteQuizzesImpl extends DeleteQuizzesUseCase {
  DeleteQuizzesImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute() async => quizRepository.deleteAllQuiz();
}