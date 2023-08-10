import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/data/repository/module.dart';
import 'package:quizzylite/domain/usecases/delete_quiz/delete_quiz.dart';
import 'package:quizzylite/domain/usecases/delete_quiz/delete_quiz_impl.dart';
import 'package:quizzylite/domain/usecases/delete_quizzes/delete_quizzes.dart';
import 'package:quizzylite/domain/usecases/delete_quizzes/delete_quizzes_impl.dart';
import 'package:quizzylite/domain/usecases/get_quiz/get_quiz.dart';
import 'package:quizzylite/domain/usecases/get_quiz/get_quiz_impl.dart';
import 'package:quizzylite/domain/usecases/get_quizzes/get_quizzes.dart';
import 'package:quizzylite/domain/usecases/get_quizzes/get_quizzes_impl.dart';
import 'package:quizzylite/domain/usecases/save_quiz/save_quiz.dart';
import 'package:quizzylite/domain/usecases/save_quiz/save_quiz_impl.dart';

final getQuizzesProvider = Provider<GetQuizzesUseCase>(
  (ref) => GetQuizzesImpl(ref.read(quizzesProvider)),
);

final getQuizProvider = Provider<GetQuizUseCase>(
  (ref) => GetQuizImpl(ref.read(quizzesProvider)),
);

final deleteQuizzesProvider = Provider<DeleteQuizzesUseCase>(
  (ref) => DeleteQuizzesImpl(ref.read(quizzesProvider)),
);

final deleteQuizProvider = Provider<DeleteQuizUseCase>(
  (ref) => DeleteQuizImpl(ref.read(quizzesProvider)),
);

final saveQuizProvider = Provider<SaveQuizUseCase>(
  (ref) => SaveQuizImpl(ref.read(quizzesProvider)),
);
