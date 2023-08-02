// ignore_for_file: one_member_abstracts

import 'package:quizzylite/domain/entities/quiz.dart';

abstract class SaveQuizUseCase {
  Future<void> execute(Quiz quiz);
}
