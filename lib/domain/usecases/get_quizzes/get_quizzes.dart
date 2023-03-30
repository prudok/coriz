import '../../entities/quizList/quiz_list.dart';

abstract class GetQuizzesUseCase {
  Future<QuizList> execute();
}