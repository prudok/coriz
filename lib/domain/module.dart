import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'usecases/delete_quiz/delete_quiz.dart';
import 'usecases/delete_quiz/delete_quiz_impl.dart';
import 'usecases/delete_quizzes/delete_quizzes.dart';
import 'usecases/delete_quizzes/delete_quizzes_impl.dart';
import 'usecases/get_quiz/get_quiz.dart';
import 'usecases/get_quiz/get_quiz_impl.dart';
import 'usecases/get_quizzes/get_quizzes.dart';
import 'usecases/get_quizzes/get_quizzes_impl.dart';
import 'usecases/save_quiz/save_quiz.dart';
import 'usecases/save_quiz/save_quiz_impl.dart';
import '../data/repository/module.dart';

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
