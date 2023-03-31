import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'quiz_repository_impl.dart';
import '../../domain/repositories/quiz_repository.dart';
import '../datasource/files/module.dart';

final quizzesProvider = Provider<QuizRepository>(
  (ref) => QuizRepositoryImpl(ref.read(filesProvider)),
);
