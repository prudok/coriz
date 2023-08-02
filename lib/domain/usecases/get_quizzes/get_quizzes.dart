// ignore_for_file: one_member_abstracts

import 'package:quizzylite/domain/entities/quiz_list.dart';

abstract class GetQuizzesUseCase {
  Future<QuizList> execute();
}
