import '../../entities/quiz/quiz.dart';
import '../../repositories/quiz_repository.dart';
import 'get_quiz.dart';

class GetQuizImpl extends GetQuizUseCase {
  GetQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<Quiz?> execute(String id) async => quizRepository.getQuizById(id);
}