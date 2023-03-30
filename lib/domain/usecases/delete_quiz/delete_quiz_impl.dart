import '../../repositories/quiz_repository.dart';
import 'delete_quiz.dart';

class DeleteQuizImpl extends DeleteQuizUseCase {
  DeleteQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute(String id) async => quizRepository.deleteQuiz(id);
}