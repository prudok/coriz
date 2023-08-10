import 'package:quizzylite/domain/entities/quiz_list.dart';
import 'package:quizzylite/domain/repositories/quiz_repository.dart';
import 'package:quizzylite/domain/usecases/get_quizzes/get_quizzes.dart';

class GetQuizzesImpl extends GetQuizzesUseCase {
  GetQuizzesImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<QuizList> execute() async => quizRepository.loadAllQuizzes();
}
