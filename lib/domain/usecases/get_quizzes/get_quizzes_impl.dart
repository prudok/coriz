import '../../entities/quizList/quiz_list.dart';
import '../../repositories/quiz_repository.dart';
import 'get_quizzes.dart';

class GetQuizzesImpl extends GetQuizzesUseCase {
  GetQuizzesImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<QuizList> execute() async => quizRepository.loadAllQuizzes();
}