import '../../entities/quiz/quiz.dart';
import '../../repositories/quiz_repository.dart';
import 'save_quiz.dart';

class SaveQuizImpl extends SaveQuizUseCase {
  SaveQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute(Quiz quiz) async => quizRepository.saveQuiz(quiz);
}