import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/data/datasource/files/module.dart';
import 'package:quizzylite/data/repository/quiz_repository_impl.dart';
import 'package:quizzylite/domain/repositories/quiz_repository.dart';

final quizzesProvider = Provider<QuizRepository>(
  (ref) => QuizRepositoryImpl(ref.read(filesProvider)),
);
