import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/domain/repositories/quiz_repository.dart';
import 'package:quizzylite/domain/usecases/save_quiz/save_quiz.dart';

class SaveQuizImpl extends SaveQuizUseCase {
  SaveQuizImpl(this.quizRepository);
  final QuizRepository quizRepository;

  @override
  Future<void> execute(Quiz quiz) async => quizRepository.saveQuiz(quiz);
}
